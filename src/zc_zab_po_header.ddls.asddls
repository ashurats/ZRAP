@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption CDS View for  PO Header'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true  // Interview : This annotation is NEEDED if we want to create metadata extensions

@ObjectModel.semanticKey: [ 'Ebeln' , 'Bukrs' ] // To make columns bold in the page
define root view entity ZC_ZAB_PO_HEADER
  as select from zi_com_zab_po_header
  composition [1..*] of ZC_ZAB_PO_ITEM as _ITEM
{
  key Ebeln,
      Bukrs,
      Bsart,
      //   case Bsart
      //   when 'ZNB'
      //   then '3'
      //   when 'ZROH'
      //   then
      //   '2'
      //   else
      //   ' '
      //   end as CRT,
      //   cast ('3' as abap.char(1)) as crt1,
      Lifnr,
      Land1,
      concat_with_space(Bukrs , Land1 , 1) as ConValue,
      Lastdatetime,
      /* Associations */

      _COM.ComName,
      _Vendor.Name1,
      _Vendor.Gender,
      _Vendor.VenAddress,
      _Vendor.VenMobile,
      _ITEM,
      @Semantics.imageUrl: true
      _Logo.LogoUrl,

// There is a requirement is to show one msg in the UI by combining 3 4 fields, here we have used 4 static text fields
// We are using Root View for this because the required fields are not available in any underlying interface or composite view 
  cast('Always' as abap.char(20)) as Field_1, 
  cast ('Proud' as abap.char(20)) as Field_2, 
  cast ('India' as abap.char(20)) as Field_3, 
  cast ('Make' as abap.char(20)) as Field_4 
}
