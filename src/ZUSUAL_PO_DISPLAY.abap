REPORT ZUSUAL_PO_DISPLAY.

" Input PO Num
PARAMETERS: p_ebeln TYPE ekko-ebeln OBLIGATORY.

" Declare variable
DATA: ls_ekko TYPE ekko.

START-OF-SELECTION.

" Retrieve PO Header Data
SELECT SINGLE ebeln bukrs lifnr bedat ekorg
  FROM ekko
  INTO CORRESPONDING FIELDS OF ls_ekko
  WHERE ebeln = p_ebeln.

" Check whether PO exists
IF sy-subrc = 0.

  WRITE: / 'PURCHASE ORDER INFORMATION'.
  ULINE.

  WRITE: / 'PO Number:', ls_ekko-ebeln.
  WRITE: / 'Company Code:', ls_ekko-bukrs.
  WRITE: / 'Vendor:', ls_ekko-lifnr.
  WRITE: / 'Document Date:', ls_ekko-bedat.
  WRITE: / 'Purchasing Organization:',
           ls_ekko-ekorg.

ELSE.

  WRITE: / 'Purchase Order Not Found!'.

ENDIF.
