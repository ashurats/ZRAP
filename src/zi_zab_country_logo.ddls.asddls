@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS View for Country Logo'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_zab_country_logo
  as select from zab_country_logo
{
  key land1    as Land1,
      @Semantics.imageUrl: true
      logo_url as LogoUrl
}
