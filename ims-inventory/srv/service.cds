using ims from '../db/data-model';

service InventoryService {
    entity Products as projection on ims.Products;
    entity Warehouses as projection on ims.Warehouses;
    entity StockLevels as projection on ims.StockLevels;
    entity StockMovements as projection on ims.StockMovements;
}
