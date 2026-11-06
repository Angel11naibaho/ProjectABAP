# SAP Table Structure – EKKO

## Table Description
EKKO is a standard SAP table that stores Purchasing Document Header information.

## Fields Used

| Field | Description |
|---|---|
| EBELN | Purchasing Document Number |
| BUKRS | Company Code |
| LIFNR | Vendor Account Number |
| BEDAT | Document Date |
| EKORG | Purchasing Organization |

## Usage in This Project
The EKKO table is used to retrieve Purchase Order header information based on the document number entered by the user.
The program uses SELECT SINGLE to retrieve one matching record.
