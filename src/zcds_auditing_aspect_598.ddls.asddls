@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl: { authorizationCheck: #NOT_REQUIRED,
                  auditing.type: #CUSTOM,
                  auditing.specification: 'ANG'
                 }
@EndUserText.label: 'Politicas de Acceso Personalizadas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_auditing_aspect_598
  as select from zdt_com_inv_598
{
  key invoice_id    as InvoiceId,
      customer_name as CustomerName,
      @Semantics.amount.currencyCode :'Currency'
      inv_amount    as InvAmount,
      currency      as Currency,
      department    as Department,
      created_by    as CreatedBy,
      create_date   as CreateDate
}
