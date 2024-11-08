INSERT INTO users (username, uuid, role) VALUES
                                             ('카카오1', '550e8400-e29b-41d4-a716-446655440000', 'ROLE_MANAGER'),
                                             ('카카오2', '550e8400-e29b-41d4-a716-446655440001', 'ROLE_MANAGER'),
                                             ('카카오3', '550e8400-e29b-41d4-a716-446655440002', 'ROLE_MANAGER'),
                                             ('카카오4', '550e8400-e29b-41d4-a716-446655440003', 'ROLE_MANAGER'),
                                             ('카카오5', '550e8400-e29b-41d4-a716-446655440004', 'ROLE_MANAGER'),
                                             ('카카오6', '550e8400-e29b-41d4-a716-446655440005', 'ROLE_MANAGER'),
                                             ('카카오7', '550e8400-e29b-41d4-a716-446655440006', 'ROLE_MANAGER'),
                                             ('카카오8', '550e8400-e29b-41d4-a716-446655440007', 'ROLE_MANAGER'),
                                             ('카카오9', '550e8400-e29b-41d4-a716-446655440008', 'ROLE_MANAGER'),
                                             ('카카오10', '550e8400-e29b-41d4-a716-446655440009', 'ROLE_MANAGER'),
                                             ('카카오11', '550e8400-e29b-41d4-a716-446655440010', 'ROLE_MANAGER'),
                                             ('카카오12', '550e8400-e29b-41d4-a716-446655440011', 'ROLE_MANAGER'),
                                             ('카카오13', '550e8400-e29b-41d4-a716-446655440012', 'ROLE_MANAGER'),
                                             ('카카오14', '550e8400-e29b-41d4-a716-446655440013', 'ROLE_MANAGER'),
                                             ('카카오15', '550e8400-e29b-41d4-a716-446655440014', 'ROLE_MANAGER'),
                                             ('카카오16', '550e8400-e29b-41d4-a716-446655440015', 'ROLE_MANAGER'),
                                             ('카카오17', '550e8400-e29b-41d4-a716-446655440016', 'ROLE_MANAGER'),
                                             ('카카오18', '550e8400-e29b-41d4-a716-446653423436', 'ROLE_MANAGER');

INSERT INTO managers (user_id, manager_name, profile_image, career, comment, working_region, gender, is_registered) VALUES
                                                                                                                        (1, '김철수', 'images/profile/1', '10년 경력', '성실하고 책임감이 강합니다.', '서울 강서구', '남성', TRUE),
                                                                                                                        (2, '이영희', 'images/profile/2', '5년 경력', '친절하게 안내합니다.', '부산 해운대구', '여성', TRUE),
                                                                                                                        (3, '박민수', 'images/profile/3', '8년 경력', '정확하고 신뢰할 수 있습니다.', '인천 남동구', '남성', TRUE),
                                                                                                                        (4, '최수진', 'images/profile/4', '6년 경력', '꼼꼼하게 일 처리합니다.', '대구 수성구', '여성', TRUE),
                                                                                                                        (5, '정지훈', 'images/profile/5', '7년 경력', '언제나 최선을 다합니다.', '대전 중구', '남성', TRUE),
                                                                                                                        (6, '홍길동', 'images/profile/6', '9년 경력', '고객 만족을 위해 노력합니다.', '광주 서구', '남성', TRUE),
                                                                                                                        (7, '윤미라', 'images/profile/7', '3년 경력', '긍정적인 에너지가 가득합니다.', '울산 남구', '여성', TRUE),
                                                                                                                        (8, '강동현', 'images/profile/8', '11년 경력', '신뢰할 수 있는 전문가입니다.', '세종특별자치시', '남성', TRUE),
                                                                                                                        (9, '오지훈', 'images/profile/9', '4년 경력', '언제나 밝은 모습으로 응대합니다.', '경기 수원시', '남성', TRUE),
                                                                                                                        (10, '서지민', 'images/profile/10', '2년 경력', '세심하고 꼼꼼하게 돕겠습니다.', '충남 천안시', '여성', TRUE),
                                                                                                                        (11, '한수연', 'images/profile/11', '6년 경력', '정확한 일처리를 지향합니다.', '충북 청주시', '여성', TRUE),
                                                                                                                        (12, '김도현', 'images/profile/1', '9년 경력', '고객 만족을 우선합니다.', '전남 목포시', '남성', TRUE),
                                                                                                                        (13, '박소영', 'images/profile/2', '4년 경력', '친절하게 응대합니다.', '경북 포항시', '여성', TRUE),
                                                                                                                        (14, '이준호', 'images/profile/3', '7년 경력', '전문가의 신뢰성을 제공합니다.', '경남 창원시', '남성', TRUE),
                                                                                                                        (15, '최예린', 'images/profile/4', '5년 경력', '긍정적인 마인드로 돕습니다.', '강원특별자치도 원주시', '여성', TRUE),
                                                                                                                        (16, '조민재', 'images/profile/5', '10년 경력', '신뢰할 수 있는 전문가입니다.', '전북특별자치도 전주시', '남성', TRUE),
                                                                                                                        (17, '강수빈', 'images/profile/6', '3년 경력', '항상 최선을 다합니다.', '제주특별자치도 제주시', '여성', TRUE),
                                                                                                                        (18, '테스트', 'images/profile/이창욱241108163753', '3년 경력', '안드로이드 괴물신인 카테캠 캐리중', '부산광역시', '남성', TRUE);


INSERT INTO working_hour (manager_id, mon_start_time, mon_end_time, tue_start_time, tue_end_time, wed_start_time, wed_end_time, thu_start_time, thu_end_time, fri_start_time, fri_end_time, sat_start_time, sat_end_time, sun_start_time, sun_end_time) VALUES
                                                                                                                                                                                                                                                            (1, '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '10:00', '16:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (2, '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '09:00', '15:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (3, '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '14:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (4, '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '09:00', '13:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (5, '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '15:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (6, '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '10:00', '14:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (7, '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '09:30', '13:30', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (8, '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '08:30', '12:30', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (9, '12:00', '21:00', '12:00', '21:00', '12:00', '21:00', '12:00', '21:00', '12:00', '21:00', '13:00', '17:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (10, '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '10:00', '16:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (11, '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '08:00', '17:00', '09:00', '15:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (12, '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '19:00', '10:00', '14:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (13, '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '07:00', '16:00', '09:00', '13:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (14, '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '20:00', '11:00', '15:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (15, '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '09:00', '18:00', '10:00', '14:00', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (16, '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '08:30', '17:30', '09:30', '13:30', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (17, '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '08:30', '12:30', '00:00', '00:00'),
                                                                                                                                                                                                                                                            (18, '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '07:30', '16:30', '08:30', '12:30', '00:00', '00:00');



INSERT INTO certificates (certificate_image, manager_id) VALUES
                                                             ('images/certificate/12345678', 1),
                                                             ('images/certificate/12345678', 2),
                                                             ('images/certificate/12345678', 3),
                                                             ('images/certificate/12345678', 4),
                                                             ('images/certificate/12345678', 5),
                                                             ('images/certificate/12345678', 6),
                                                             ('images/certificate/12345678', 7),
                                                             ('images/certificate/12345678', 8),
                                                             ('images/certificate/12345678', 9),
                                                             ('images/certificate/12345678', 10),
                                                             ('images/certificate/12345678', 11),
                                                             ('images/certificate/12345678', 12),
                                                             ('images/certificate/12345678', 13),
                                                             ('images/certificate/12345678', 14),
                                                             ('images/certificate/12345678', 15),
                                                             ('images/certificate/12345678', 16),
                                                             ('images/certificate/12345678', 17),
                                                             ('images/certificate/이창욱241108163753', 18);

