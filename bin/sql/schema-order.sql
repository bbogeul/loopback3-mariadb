-- 주문 내역
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `proforma_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '가견적키',
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 번호',
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '인보이스 번호',
  `ref_proforma_number2` longtext COLLATE utf8mb4_unicode_ci DEFAULT '[]' COMMENT 'reference array',
  `role_id` int(10) unsigned NOT NULL DEFAULT 2 COMMENT '바이어 회원 롤 아이디',
  `user_id` int(10) unsigned NOT NULL COMMENT '바이어 회원 아이디',
  `operator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '운영자 이름',
  `pr_type` int(10) unsigned DEFAULT NULL COMMENT '상품 종류 수',
  `payment_method` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '결제 수단',
  `payment_type` enum('PAYMENT','REFUND','PARTIAL_PAYMENT','PARTIAL_REFUND') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '결제/환불 구분',
  `refund_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '환불/반품 금액',
  `checkout_price` decimal(10,2) unsigned NOT NULL COMMENT '적립금 적용 후 금액',
  `total_price` decimal(10,2) NOT NULL COMMENT '총 결제 금액',
  `subtotal_price` decimal(10,2) NOT NULL COMMENT '상품 금액',
  `total_cost_price` decimal(10,2) DEFAULT 0.00 COMMENT '총 구입가',
  `total_margin_price` decimal(10,2) DEFAULT 0.00 COMMENT '총 마진',
  `shipping_price` decimal(10,2) NOT NULL COMMENT '배송 금액',
  `actual_shipping_price` decimal(10,2) DEFAULT 0.00 COMMENT '실제 배송비',
  `margin_shipping_price` decimal(10,2) DEFAULT 0.00,
  `total_quantity` int(10) unsigned NOT NULL COMMENT '총 수량',
  `total_weight` decimal(10,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '총 중량',
  `capacity` decimal(10,2) DEFAULT NULL COMMENT '용량',
  `capacity_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '용량 타입',
  `bank_ct_id` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '은행 국가코드',
  `bank_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '은행 이름',
  `account_holder` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌 주인',
  `incoterms` char(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '인코텀스 ',
  `shipment_service_id` int(10) unsigned NOT NULL COMMENT '배송 서비스 아이디',
  `est_ship_date` int(10) unsigned NOT NULL COMMENT '예상 배송일',
  `comments` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리마크',
  `credit_used` tinyint(1) NOT NULL DEFAULT 0 COMMENT '적립급 사용 여부',
  `credit_amount_used` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '적립금 사용 금액',
  `recipient_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수신자 이름 ',
  `shipping_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 전화번호',
  `shipping_ct_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 국가코드',
  `shipping_cs_id` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '배송지 회사주코드',
  `shipping_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 도시',
  `shipping_address1` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 주소1',
  `shipping_address2` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 주소2',
  `shipping_zipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 우편번호',
  `refund_status` tinyint(2) NOT NULL DEFAULT 0,
  `shipment_status` tinyint(2) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '상테값',
  `status_updated` timestamp NULL DEFAULT NULL COMMENT '상태변경일시',
  `order_complete_date` timestamp NULL DEFAULT NULL COMMENT '주문완료일시',
  `pg_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG 상태',
  `tracking_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '송장번호',
  `tracking_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '송장번호 링크',
  `export_date` timestamp NULL DEFAULT NULL COMMENT '물품 수출일자',
  `tt_depositor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '입금자명',
  `payment_confirm_price` decimal(10,2) DEFAULT 0.00 COMMENT '입급확인 금액',
  `payment_confirm_date` timestamp NULL DEFAULT NULL COMMENT '입금확인 날짜',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp() COMMENT '수정일시',
  `deleted` timestamp NULL DEFAULT NULL COMMENT '삭제일시',
  `net_profit_price` decimal(10,2) GENERATED ALWAYS AS (`total_margin_price` + `margin_shipping_price`) VIRTUAL COMMENT '순이익',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_order_key` (`order_key`),
  KEY `idx_order_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 내역';


-- 주문 상품 내역
CREATE TABLE `order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `user_id` int(10) unsigned NOT NULL COMMENT '사용자 아이디',
  `order_id` int(10) unsigned NOT NULL COMMENT '주문 아이디',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `cart_id` int(10) DEFAULT NULL COMMENT '카트 아이디',
  `br_id` int(10) unsigned NOT NULL COMMENT '브랜드 아이디',
  `pr_id` int(10) unsigned NOT NULL COMMENT '상품 아이디',
  `br_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '브랜드명',
  `pr_name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품명',
  `po_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '상품 옵션 아이디',
  `po_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품 옵션명',
  `cat_cd_1depth` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카테고리1단계',
  `cat_cd_2depth` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카테고리2단계',
  `cat_cd_3depth` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카테고리3단계',
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '바코드',
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]' COMMENT '상품 이미지',
  `discount_id` int(10) unsigned DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '총 상품 금액',
  `supply_rate` decimal(10,2) DEFAULT NULL COMMENT '공급률',
  `capacity` decimal(10,2) DEFAULT NULL COMMENT '용량',
  `capacity_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '용량타입',
  `supply_price` decimal(10,2) DEFAULT NULL COMMENT '공급가',
  `retail_price` decimal(10,2) DEFAULT NULL COMMENT 'MSRP',
  `cost_price` decimal(10,2) DEFAULT 0.00 COMMENT '구입가',
  `margin_price` decimal(10,2) DEFAULT 0.00 COMMENT '상품 마진',
  `quantity` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '상품 수량',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '상태값',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp() COMMENT '수정일시',
  `deleted` timestamp NULL DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_op_ids` (`order_key`,`pr_id`,`po_id`),
  KEY `idx_pp_order_id` (`order_id`),
  KEY `idx_op_order_key` (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 상품 내역';


-- 결제 내역
CREATE TABLE `payment_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `payment_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제 수단',
  `payment_type` enum('PAYMENT','REFUND','PARTIAL_PAYMENT','PARTIAL_REFUND') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제/환불 구분',
  `payment_partialed` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '부분결제/부분환불 여부',
  `payment_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '결제/환불 금액',
  `proforma_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '가견적키',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `pg_order_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG 결제 아이디',
  `pg_capture_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG 캡처 아이디',
  `pg_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'PG 응답 결과',
  `pg_status` enum('CREATED','SAVED','APPROVED','VOIDED','COMPLETED') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG 결제 상태값',
  `role_id` int(10) unsigned NOT NULL COMMENT '회원 롤 아이디',
  `user_id` int(10) unsigned NOT NULL COMMENT '회원 아이디',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  PRIMARY KEY (`id`),
  KEY `idx_order_key` (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='결제 내역';


-- 데빗 기록
CREATE TABLE `debit_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `role_id` int(10) unsigned NOT NULL COMMENT '회원 롤아이디',
  `user_id` int(10) unsigned NOT NULL COMMENT '회원 아이디',
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원명',
  `user_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 이메일',
  `company_id` int(10) unsigned NOT NULL COMMENT '회사 아이디',
  `operator_role_id` int(10) unsigned DEFAULT NULL COMMENT '관리자 롤아이디',
  `operator_user_id` int(10) unsigned DEFAULT NULL COMMENT '관리자 아이디',
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 번호',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '주문 아이디',
  `promotion_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '프로모션 아이디',
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '크레딧',
  `credit_balance` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '잔액',
  `event_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제목',
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리마크',
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT 'None' COMMENT '추가 설명',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '상태값',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp() COMMENT '수정일시',
  `deleted` timestamp NULL DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `idx_dh_user` (`role_id`,`user_id`),
  KEY `idx_dh_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='적립금'


-- 주문 리마크 로그
CREATE TABLE `order_remark_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `admin_role_id` int(10) unsigned NOT NULL COMMENT '관리자 회원 롤 아이디',
  `admin_user_id` int(10) unsigned NOT NULL COMMENT '관리자 회원 아이디',
  `action_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '실행작업명(서버에서 입력)',
  `total_cost_price` decimal(10,2) DEFAULT NULL COMMENT '총 상품 구입비',
  `actual_shipping_price` decimal(10,2) DEFAULT NULL COMMENT '실제 배송비',
  `tt_depositor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '입금자명',
  `payment_confirm_price` decimal(10,2) DEFAULT NULL COMMENT '입금 확인 금액',
  `payment_confirm_date` timestamp NULL DEFAULT NULL COMMENT '입금 확인 일시',
  `export_date` timestamp NULL DEFAULT NULL COMMENT '수출일',
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리마크',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '설명',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  PRIMARY KEY (`id`),
  KEY `idx_orl_order_key` (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 리마크 로그'


-- 주문 반품/환불 로그
CREATE TABLE `order_refund_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `order_id` int(10) unsigned NOT NULL COMMENT '주문번호',
  `admin_role_id` int(10) unsigned NOT NULL COMMENT '관리자 회원 롤 아이디',
  `admin_user_id` int(10) unsigned NOT NULL COMMENT '관리자 회원 아이디',
  `role_id` int(10) unsigned NOT NULL COMMENT '회원 롤 아이디',
  `user_id` int(10) unsigned NOT NULL COMMENT '회원 아이디',
  `order_refund_price` decimal(10,2) DEFAULT NULL COMMENT '반품/환불 금액',
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT 'None' COMMENT '설명',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  PRIMARY KEY (`id`),
  KEY `idx_orl_order_key` (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 반품/환불 로그'


-- 주문 배송 정보 로그
CREATE TABLE `order_shipment_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `order_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문키',
  `order_id` int(10) unsigned NOT NULL COMMENT '주문번호',
  `admin_role_id` int(10) unsigned DEFAULT NULL COMMENT '관리자 회원 롤 아이디',
  `admin_user_id` int(10) unsigned DEFAULT NULL COMMENT '관리자 회원 아이디',
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT 'None' COMMENT '설명',
  `total_weight` decimal(10,2) DEFAULT NULL COMMENT '총 무게',
  `tracking_number` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '송장번호',
  `tracking_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '송장 추적 URL',
  `email_sent` tinyint(1) NOT NULL DEFAULT 0 COMMENT '이메일 발송 여부',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '상태값',
  `status_updated` timestamp NULL DEFAULT NULL COMMENT '상태변경일시',
  `export_date` timestamp NULL DEFAULT NULL COMMENT '수출일자',
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT '생성일시',
  `updated` timestamp NULL DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`),
  KEY `idx_orl_order_key` (`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 배송 로그'
