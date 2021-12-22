%dw 2.0
output application/json
---
payload groupBy ($.orderNumber) pluck $ map ((item, index) -> {
    orderNumber: item.orderNumber[0],
    orderDate: item.orderDate[0],
    requiredDate: item.requiredDate[0],
    shippedDate: item.shippedDate[0],
    status: item.status[0],
    comments: item.comments[0],
    customerNumber: item.customerNumber[0],
    Orderdetails: {
        orders: item map {
            orderNumber: $.orderNumber,
            productCode : $.productCode,
            quantityOrdered: $.quantityOrdered,
            priceEach: $.priceEach,
            orderLineNumber: $.orderLineNumber
        }
    }
     
})