package com.team25.backend.controller;

import com.team25.backend.dto.ReportDto;
import com.team25.backend.dto.response.ApiResponse;
import com.team25.backend.entity.Report;
import com.team25.backend.service.ReportService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/reports/")
public class ReportController {

    private final ReportService reportService;

    public ReportController(ReportService reportService) {
        this.reportService = reportService;
    }

    @GetMapping("/{reservation_id}")
    public ResponseEntity<ApiResponse<Report>> getReport(
        @PathVariable("reservation_id") Long reservationId) {
        return new ResponseEntity<>(
            new ApiResponse<>(true, "리포트 조회를 성공했습니다", reportService.getReport(reservationId)),
            HttpStatus.OK);
    }

    @PostMapping("/{reservation_id}")
    public ResponseEntity<ApiResponse<Report>> createReport(
        @PathVariable("reservation_id") Long reservationId,
        @Valid @RequestBody ReportDto reportDto) {
        return new ResponseEntity<>(new ApiResponse<>(true, "리포트 생성이 완료되었습니다",
            reportService.createReport(reservationId, reportDto)), HttpStatus.CREATED);
    }
}
