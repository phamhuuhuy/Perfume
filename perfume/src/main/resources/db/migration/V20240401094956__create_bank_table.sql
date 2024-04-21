CREATE TABLE bank (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    customer_id             uuid,
    supplier_id             uuid,
    account_number          VARCHAR,
    bank_name               VARCHAR,
    account_name            VARCHAR,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE,
    CONSTRAINT "fk_customer_id_customer_table" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id"),
    CONSTRAINT "fk_supplier_id_supplier_table" FOREIGN KEY ("supplier_id") REFERENCES "supplier" ("id")
);

CREATE INDEX IF NOT EXISTS idx_id_bank ON bank (id)