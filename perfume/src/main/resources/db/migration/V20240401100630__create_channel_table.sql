CREATE TABLE channel (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name                    VARCHAR,
    link                    VARCHAR,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_channel ON channel (id)