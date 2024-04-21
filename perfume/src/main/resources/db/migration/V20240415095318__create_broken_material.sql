CREATE TABLE broken_material (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    import_id               uuid,
    reason                  VARCHAR,
    quantity                INTEGER,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_shipping ON shipping (id)