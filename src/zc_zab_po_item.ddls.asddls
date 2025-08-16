@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption CDS View for  PO Items'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ZAB_PO_ITEM as select from zi_com_zab_po_item
//composition of target_data_source_name as _association_name
association to parent ZC_ZAB_PO_HEADER as _Head
on $projection.Ebeln = _Head.Ebeln
{
    key Ebeln,
    key Ebelp,
    Matnr,
    MaterialStatus,
    Materialind,
    Werks,
    Lgort,
    @Semantics.quantity.unitOfMeasure: 'Meins'
    Menge,
    Meins,
    @Semantics.amount.currencyCode: 'Waers'
    Netpr,
    Waers,
    Lastdatechanged,
    _PLANT.PlantName,
    _SLOC.SlocName,
    _Head
}
