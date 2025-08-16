@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Header Interface CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_Zab_Po_Header as select from zab_po_header
{
    key ebeln as Ebeln,
    bukrs as Bukrs,
    bsart as Bsart,
    lifnr as Lifnr,
    land1 as Land1,
    lastdatetime as Lastdatetime
}
