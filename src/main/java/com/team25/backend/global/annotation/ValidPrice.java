package com.team25.backend.global.annotation;

import com.team25.backend.global.validator.PriceValidator;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ValidInteger
@Documented
@Constraint(validatedBy = PriceValidator.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidPrice {

    String message() default "유효하지 않은 가격입니다.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
