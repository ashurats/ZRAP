@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS View for Vendor'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity  zi_zab_vendor as select from zab_vendor
{
    key lifnr as Lifnr,
    name1 as Name1,
    gender as Gender,
    ven_address as VenAddress,
    ven_mobile as VenMobile
}
