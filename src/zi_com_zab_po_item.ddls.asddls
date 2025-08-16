@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite CDS view for PO Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity  zi_com_zab_po_item as select from zi_zab_po_item
association[0..1] to zi_zab_sloc as _SLOC on 
$projection.Lgort = _SLOC.Lgort

association[0..1] to zi_zab_plant as _PLANT
on $projection.Werks = _PLANT.Werks

{
    key Ebeln,
    key Ebelp,
    Matnr,
    Werks,
    Lgort,
    @Semantics.quantity.unitOfMeasure: 'Meins'
    Menge,
    Meins,
    @Semantics.amount.currencyCode: 'Waers'
    Netpr,
    Waers,
    Lastdatechanged,
    MaterialStatus,
    Materialind,
    _SLOC,
    _PLANT
}
