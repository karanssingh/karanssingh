%dw 2.0
output application/json
---
payload.Orderdetails.products map {
    orderNumber: payload.orderNumber,
    productCode: $.productCode,
    quantityOrdered: $.quantityOrdered,
    priceEach: $.priceEach,
    orderLineNumber: $.orderLineNumber
}