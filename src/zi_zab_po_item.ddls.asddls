@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Item Interface CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_zab_po_item as select from zab_po_item
{
  key ebeln as Ebeln,
    key ebelp as Ebelp,
    matnr as Matnr,
    
    case matnr
    when 'RAP-08'
    then 'GR Done'
    when 'RAP-09'
    then 'Gr Pending'
    when 'RAP-10'
    then 'Rlease Pending'
    else 'PO not Aprroved'
    end as MaterialStatus,
    
    case matnr
    when 'RAP-08'
    then 1
    when 'RAP-09'
    then 2
    when 'RAP-10'
    then 3
    else 0
    end as Materialind,
     
    
    werks as Werks,
    lgort as Lgort,
    @Semantics.quantity.unitOfMeasure: 'Meins'
    menge as Menge,
    meins as Meins,
    @Semantics.amount.currencyCode: 'Waers'
    netpr as Netpr,
    waers as Waers,
    lastdatechanged as Lastdatechanged
    
 }
