
-- users definition

-- user 키워드는 예약어이므로 테이블명으로 사용하지 않음
-- ('user'로 따옴표 붙이면 불가능은 아니나, 이후 테이블명 사용 시 무조건 따옴표 붙여야 해서 불편함)
-- 참고 링크 : https://stackoverflow.com/questions/22256124/cannot-create-a-database-table-named-user-in-postgresql

-- DROP TABLE users;

CREATE TABLE users(
	idx SERIAL NOT NULL, -- 사용자 고유 번호
	email VARCHAR(255) NOT NULL,
	pw VARCHAR(255) NOT NULL, -- 패스워드
	nickname VARCHAR(255) NOT NULL,
	profile_pic VARCHAR(255) NOT NULL DEFAULT '' -- 프로필 사진 S3 URL
	membership INTEGER NOT NULL DEFAULT 0, -- 멤버쉽 구분(티어1, 티어2 등)
	last_update TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 마지막 접속 시점
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 가입 시점
	CONSTRAINT users_pk PRIMARY KEY (idx)
);
COMMENT ON TABLE users IS '사용자 정보';

-- Column comments

COMMENT ON COLUMN users.idx IS '사용자 고유 번호';
COMMENT ON COLUMN users.pw IS '패스워드';
COMMENT ON COLUMN users.profile_pic IS '프로필 사진 S3 URL';
COMMENT ON COLUMN users.membership IS '멤버쉽 구분(티어1, 티어2 등)';
COMMENT ON COLUMN users.last_update IS '마지막 접속 시점';
COMMENT ON COLUMN users.created_at IS '가입 시점';



-- func_log definition

-- DROP TABLE func_log;

CREATE TABLE func_log (
	user_idx INTEGER NOT NULL, -- 사용자 고유번호
	func_code VARCHAR(255) NOT NULL, -- 함수 기능 코드
	is_worked bool NOT NULL, -- 정상 작동 여부
	error_msg TEXT NOT NULL DEFAULT '', -- Unexpected Error일 경우 저장되는 에러 메시지
	start_time TIMESTAMP NOT NULL, -- 작동 시작 시각
	end_time TIMESTAMP NOT NULL, -- 작동 종료 시각
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW() -- 생성 시점
);
COMMENT ON TABLE func_log IS '사용자 서비스 이용시간 + 기능별 사용 횟수 체크';

-- Column comments

COMMENT ON COLUMN func_log.user_idx IS '사용자 고유번호';
COMMENT ON COLUMN func_log.func_code IS '함수 기능 코드';
COMMENT ON COLUMN func_log.is_worked IS '정상 작동 여부';
COMMENT ON COLUMN func_log.error_msg IS 'Unexpected Error(is_worked=2)일 경우 저장되는 에러 메시지';
COMMENT ON COLUMN func_log.start_time IS '작동 시작 시각';
COMMENT ON COLUMN func_log.end_time IS '작동 종료 시각';
COMMENT ON COLUMN func_log.created_at IS '생성 시점';


-- func_log foreign keys

ALTER TABLE func_log ADD CONSTRAINT func_log_fk FOREIGN KEY (user_idx) REFERENCES users(idx);



-- ml_project definition

-- Drop table

-- DROP TABLE ml_project;

CREATE TABLE ml_project (
	idx serial NOT NULL, -- 프로젝트 고유 번호
	user_idx INTEGER NOT NULL, -- 사용자 고유 번호
	proj_name VARCHAR(255) NOT NULL, -- 프로젝트 명
	last_update TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 마지막 수정 시점
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 생성 시점
	CONSTRAINT ml_project_pk PRIMARY KEY (idx)
);
COMMENT ON TABLE ml_project IS 'ML 프로젝트 정보';

-- Column comments

COMMENT ON COLUMN ml_project.idx IS '프로젝트 고유 번호';
COMMENT ON COLUMN ml_project.user_idx IS '사용자 고유 번호';
COMMENT ON COLUMN ml_project.proj_name IS '프로젝트 명';
COMMENT ON COLUMN ml_project.last_update IS '마지막 수정 시점';
COMMENT ON COLUMN ml_project.created_at IS '생성 시점';


-- ml_project foreign keys

ALTER TABLE ml_project ADD CONSTRAINT ml_project_fk FOREIGN KEY (user_idx) REFERENCES users(idx);



-- ml_model definition

-- Drop table

-- DROP TABLE ml_model;

CREATE TABLE ml_model (
	idx serial NOT NULL, -- 모델 고유 번호
	user_idx INTEGER NOT NULL, -- 사용자 고유 번호
	model_name VARCHAR(255) NOT NULL, -- 모델명
	model_url VARCHAR(255) NOT NULL DEFAULT '', -- 모델 S3 URL
	last_update TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 마지막 수정 시점
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 생성 시점
	CONSTRAINT ml_model_pk PRIMARY KEY (idx)
);
COMMENT ON TABLE ml_model IS 'ML 모델 정보';

-- Column comments

COMMENT ON COLUMN ml_model.idx IS '모델 고유 번호';
COMMENT ON COLUMN ml_model.user_idx IS '사용자 고유 번호';
COMMENT ON COLUMN ml_model.model_name IS '모델명';
COMMENT ON COLUMN ml_model.last_update IS '마지막 수정 시점';
COMMENT ON COLUMN ml_model.created_at IS '생성 시점';


-- ml_model foreign keys

ALTER TABLE ml_model ADD CONSTRAINT ml_model_fk FOREIGN KEY (user_idx) REFERENCES users(idx);


-- mail_confirm definition

-- DROP TABLE mail_confirm;

CREATE TABLE mail_confirm(
	email VARCHAR(255) NOT NULL,
	cert_number VARCHAR(255) NOT NULL,
	last_update TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 마지막 인증 요청 시점
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 최초 인증 요청 시점
);

COMMENT ON COLUMN mail_confirm.last_update IS '마지막 인증 요청 시점';
COMMENT ON COLUMN mail_confirm.created_at IS '최초 인증 요청 시점';


-- inactive_users definition

-- DROP TABLE inactive_users;

CREATE TABLE inactive_users(
	idx INTEGER NOT NULL, -- 사용자 고유 번호
	email VARCHAR(255) NOT NULL,
	pw VARCHAR(255) NOT NULL, -- 패스워드
	nickname VARCHAR(255) NOT NULL,
	membership INTEGER NOT NULL, -- 멤버쉽 구분(티어1, 티어2 등)
	last_update TIMESTAMP WITH TIME ZONE NOT NULL, -- 마지막 접속 시점
	created_at TIMESTAMP WITH TIME ZONE NOT NULL, -- 가입 시점
	user_state INTEGER NOT NULL DEFAULT 1, -- 사용자 상태(0: 휴면, 1: 탈퇴)
	inactivated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- 사용자 상태(0: 휴면, 1: 탈퇴)
	CONSTRAINT inactive_users_pk PRIMARY KEY (idx)
);
COMMENT ON TABLE inactive_users IS '비활성 사용자 정보';

-- Column comments

COMMENT ON COLUMN inactive_users.idx IS '사용자 고유 번호';
COMMENT ON COLUMN inactive_users.pw IS '패스워드';
COMMENT ON COLUMN inactive_users.membership IS '멤버쉽 구분(티어1, 티어2 등)';
COMMENT ON COLUMN inactive_users.last_update IS '마지막 접속 시점';
COMMENT ON COLUMN inactive_users.created_at IS '가입 시점';
COMMENT ON COLUMN inactive_users.user_state IS '사용자 상태(0: 휴면, 1: 탈퇴)';



-- ★ Trigger 생성하기

-- 5분 지난 인증 메일 발송 기록은 새로운 기록 들어올 때 자동 삭제시킴
CREATE FUNCTION delete_old_mail_confirm() RETURNS trigger
    LANGUAGE plpgsql
    AS $trigger_delete_old_mail_confirm$
BEGIN
  DELETE FROM mail_confirm WHERE timestamp < CURRENT_TIMESTAMP - INTERVAL '5 minutes';
  RETURN NULL;
END;
$trigger_delete_old_mail_confirm$;

CREATE TRIGGER trigger_delete_old_mail_confirm
    AFTER INSERT ON mail_confirm
    EXECUTE PROCEDURE delete_old_mail_confirm();



-- 인증 요청이 중복해서 들어오면 해당 데이터의 last_update를 갱신시킴
CREATE FUNCTION update_mail_confirm() RETURNS trigger
    LANGUAGE plpgsql
    AS $trigger_update_mail_confirm$
BEGIN
  update mail_confirm set last_update=NOW() where email = new.email;
  RETURN NULL;
END;
$trigger_update_mail_confirm$;

CREATE TRIGGER trigger_update_mail_confirm
    AFTER UPDATE ON mail_confirm for each row
    EXECUTE PROCEDURE update_mail_confirm();