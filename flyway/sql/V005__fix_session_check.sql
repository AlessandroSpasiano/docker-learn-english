ALTER TABLE session_check
DROP COLUMN answer_past_simple,
DROP COLUMN answer_past_participle;

ALTER TABLE session_check
ADD COLUMN answer_past_simple VARCHAR(255) NULL,
ADD COLUMN answer_past_participle VARCHAR(255) NULL;
