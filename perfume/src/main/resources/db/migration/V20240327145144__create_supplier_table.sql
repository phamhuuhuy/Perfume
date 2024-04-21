CREATE TABLE supplier (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name                    VARCHAR,
    contact                 VARCHAR,
    minimumQuantityOrder    INTEGER,
    roundingQuantityOrder   INTEGER,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_supplier_table ON supplier (id)