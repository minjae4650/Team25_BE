package com.team25.backend.global.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.team25.backend.domain.login.repository.RefreshRepository;
import com.team25.backend.domain.user.repository.UserRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutFilter;

import static org.springframework.boot.autoconfigure.security.servlet.PathRequest.toH2Console;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
    private final JWTUtil jwtUtil;
    private final UserRepository userRepository;
    private final RefreshRepository refreshRepository;
    private final ObjectMapper objectMapper;
    private final CustomAccessDeniedHandler customAccessDeniedHandler;
    private final CustomAuthenticationEntryPoint customAuthenticationEntryPoint;

    public SecurityConfig(JWTUtil jwtUtil, UserRepository userRepository, RefreshRepository refreshRepository, ObjectMapper objectMapper, CustomAccessDeniedHandler customAccessDeniedHandler, CustomAuthenticationEntryPoint customAuthenticationEntryPoint) {
        this.jwtUtil = jwtUtil;
        this.userRepository = userRepository;
        this.refreshRepository = refreshRepository;
        this.objectMapper = objectMapper;
        this.customAccessDeniedHandler = customAccessDeniedHandler;
        this.customAuthenticationEntryPoint = customAuthenticationEntryPoint;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration configuration) throws Exception {

        return configuration.getAuthenticationManager();
    }
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {

        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {


        //csrf disable
        http
                .csrf((auth) -> auth.disable());

        //From 로그인 방식 disable
        http
                .formLogin((auth) -> auth.disable());

        //http basic 인증 방식 disable
        http
                .httpBasic((auth) -> auth.disable());


        //경로별 인가 작업
        http
                .authorizeHttpRequests((auth) -> auth
                        .requestMatchers( "/",
                                "/auth/**",
                                "/oauth2/callback/kakao",
                                "/address").permitAll()

                        .requestMatchers("/api/users/**",
                                "/api/tracking/**",
                                "/api/reports/**",
                                "/api/manager/name").hasAnyRole("USER", "MANAGER")

                        .requestMatchers("/api/manager/profile/**").hasRole("USER")

                        .requestMatchers("/api/reservations/manager",
                                "/api/reservations/change/**",
                                "/api/manager/tracking/**",
                                "/api/manager/reports/**",
                                "/api/manager/**").hasRole("MANAGER")

                        .requestMatchers("/api/reservations/**",
                                "api/managers/**",
                                "api/payment/**").hasRole("USER")

                        .anyRequest().permitAll());

        // 예외 처리 핸들러 추가
        http
                .exceptionHandling(exception -> exception
                .accessDeniedHandler(customAccessDeniedHandler)
                .authenticationEntryPoint(customAuthenticationEntryPoint));

        // JWT Filter
        http

                .addFilterBefore(new JWTFilter(jwtUtil, userRepository), UsernamePasswordAuthenticationFilter.class);

        // Logout Filter
        http
                .addFilterBefore(new CustomLogoutFilter(jwtUtil, refreshRepository, objectMapper), LogoutFilter.class);

        //세션 설정
        http
                .sessionManagement((session) -> session
                        .sessionCreationPolicy(SessionCreationPolicy.STATELESS));

        return http.build();
    }

    @Bean
    public WebSecurityCustomizer webSecurityCustomizer() {
        return web -> web.ignoring()
                .requestMatchers("/favicon.ico")
                .requestMatchers("/error");
    }
}

