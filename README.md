# Inventory Management System – Monorepo Overview

This repository contains a full-stack inventory management solution, including:
- A backend service (CAP, Node.js) for inventory data and business logic.
- Two SAPUI5/Fiori-based frontend applications for managing and viewing inventory.

---

## Project Structure

- **ims-inventory/**  
  Backend service using SAP CAP (Cloud Application Programming Model).
  - `db/`: Data model (`data-model.cds`) and sample data (`ims-Products.csv`).
  - `srv/`: Service definitions (`service.cds`).
  - `app/`: (Reserved for UI, currently empty.)
  - [README.md](ims-inventory/README.md): Backend-specific instructions.

- **com.karahan.ims/**  
  Classic SAPUI5 web application.
  - `webapp/`: Main UI5 app source.
    - `controller/`, `view/`, `model/`, `i18n/`: MVC structure and localization.
    - `test/`: QUnit and OPA5 tests.
    - `manifest.json`: App configuration and routing.
  - [README.md](com.karahan.ims/README.md): UI5 app-specific instructions.

- **inventory-fiori-ui/**  
  Fiori Elements List Report/Object Page app (generated with SAP Fiori tools).
  - `webapp/`: Fiori app source.
    - `annotations/`: OData annotations.
    - `localService/`: Mock OData service and metadata.
    - `test/`: Integration tests.
    - `manifest.json`: Fiori app configuration.
  - [README.md](inventory-fiori-ui/README.md): Fiori app-specific instructions.

---

## How to Run

### 1. Backend (ims-inventory)
- Install dependencies:
  ```sh
  npm install
  ```
- Start the CAP server:
  ```sh
  cds watch
  ```
  (Runs on http://localhost:4004 by default.)

### 2. Classic UI5 App (com.karahan.ims)
- Install dependencies:
  ```sh
  npm install
  ```
- Start the app:
  ```sh
  npm start
  ```
  (Runs on http://localhost:8080/index.html by default.)

### 3. Fiori Elements App (inventory-fiori-ui)
- Install dependencies:
  ```sh
  npm install
  ```
- Start the app:
  ```sh
  npm start
  ```
  (Runs on http://localhost:8080/index.html by default.)
- For mock data:
  ```sh
  npm run start-mock
  ```

---

## Data Model

The backend defines entities for:
- **Products**: ID, name, description, category, unit, createdAt.
- **Warehouses**: ID, name, location, capacity.
- **StockLevels**: Tracks product quantity per warehouse.
- **StockMovements**: Tracks inventory movements (receipt, issue, transfer).

---

## Testing

- **Backend**: (Add CAP tests as needed.)
- **UI5 App**: QUnit and OPA5 tests in `webapp/test/`.
- **Fiori App**: Integration tests in `webapp/test/integration/`.

---

## Additional Notes

- Each subproject contains its own `README.md` with more details.
- The backend must be running for the Fiori app to access live data.
- For more info on SAP CAP: https://cap.cloud.sap/docs/
- For more info on SAPUI5: https://ui5.sap.com/
- For more info on Fiori Elements: https://sapui5.hana.ondemand.com/#/topic/5d9c7c0b1b5149c1b3b8b8e8b2c1b2c1 