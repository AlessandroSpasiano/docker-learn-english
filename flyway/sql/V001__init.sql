CREATE TABLE irregular_verbs (
    id SERIAL PRIMARY KEY,
    base_form VARCHAR(50) NOT NULL,
    past_simple VARCHAR(50) NOT NULL,
    past_participle VARCHAR(50) NOT NULL,
    definition TEXT
);

CREATE INDEX idx_irregular_verbs_id ON irregular_verbs(id);