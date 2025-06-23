namespace ims;

entity Products {
    key ID          : UUID;
    name            : String(100);
    description     : String(255);
    category        : String(50);
    unitOfMeasure   : String(10);
    createdAt       : Timestamp;
}

entity Warehouses {
    key ID          : UUID;
    name            : String(100);
    location        : String(255);
    capacity        : Integer;
}

entity StockLevels {
    key ID          : UUID;
    product         : Association to Products;
    warehouse       : Association to Warehouses;
    quantity        : Integer;
    minStockLevel   : Integer;
    updatedAt       : Timestamp;
}

entity StockMovements {
    key ID          : UUID;
    product         : Association to Products;
    fromWarehouse   : Association to Warehouses;
    toWarehouse     : Association to Warehouses;
    quantity        : Integer;
    movementType    : String(20);  // Receipt / Issue / Transfer
    movementDate    : Date;
}
