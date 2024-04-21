CREATE TABLE transaction (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    customer_id             uuid,
    shipping_id             uuid,
    channel_id              uuid,
    price                   INTEGER,
    status                  VARCHAR,
    note                    VARCHAR,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE,
    CONSTRAINT "fk_customer_id_customer_table" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id"),
    CONSTRAINT "fk_shipping_id_shipping_table" FOREIGN KEY ("shipping_id") REFERENCES "shipping" ("id"),
    CONSTRAINT "fk_channel_id_channel_table" FOREIGN KEY ("channel_id") REFERENCES "channel" ("id")
);

CREATE INDEX IF NOT EXISTS idx_id_transaction ON transaction (id)