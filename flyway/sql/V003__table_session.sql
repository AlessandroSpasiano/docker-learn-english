CREATE TABLE session (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_user_id ON session(user_id);

CREATE TABLE session_check (
    id SERIAL PRIMARY KEY,
    session_id INT NOT NULL,
    irregular_verb_id INT NOT NULL,
    answer_past_simple VARCHAR(255) NOT NULL,
    answer_past_participle VARCHAR(255) NOT NULL,
    FOREIGN KEY (session_id) REFERENCES session(id),
    FOREIGN KEY (irregular_verb_id) REFERENCES irregular_verbs(id)
);

CREATE INDEX idx_session_id ON session_check(session_id);
CREATE INDEX idx_irregular_verb_id ON session_check(irregular_verb_id);