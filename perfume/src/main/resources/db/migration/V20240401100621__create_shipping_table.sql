CREATE TABLE shipping (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name                    VARCHAR,
    phone                   VARCHAR,
    address                 VARCHAR,
    ward                    VARCHAR,
    district                VARCHAR,
    city                    VARCHAR,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_shipping ON shipping (id)