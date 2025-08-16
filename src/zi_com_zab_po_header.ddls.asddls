  @AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite CDS view for PO Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_com_zab_po_header
  as select from Zi_Zab_Po_Header
  association [0..1] to zi_zab_vendor       as _Vendor on $projection.Lifnr = _Vendor.Lifnr
  association [0..1] to zi_zab_company      as _COM    on $projection.Bukrs = _COM.Bukrs
  association [0..1] to zi_zab_country_logo as _Logo   on $projection.Land1 = _Logo.Land1
{
  key Ebeln,
      Bukrs,
      Bsart,
      Lifnr,
      Land1,
      Lastdatetime,
      _Vendor, // Make Associaion Public
      _COM,

      _Logo
}
