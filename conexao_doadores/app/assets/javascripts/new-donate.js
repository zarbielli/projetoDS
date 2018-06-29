$(document).ready(function(){
    let arrayJson = [];
    $('#products-row').on('click', '#button-display-success', function (event){
        const product_value = $('#products-row').html();
        let count = $(".row-identifier").length;
        $('#products-row').attr('id', `row-${count}`);
        let product = `<div class="row row-identifier" id="products-row"> ${product_value}</div>`;
        $(product).insertAfter(`#row-${count}`);        
        $('#products-row #button-display-success').attr('id', `remove-product-${count}`);
        $(`#remove-product-${count}`).removeAttr('style');
        $(`#remove-product-${count}`).removeClass('fa-plus btn-success');
        $(`#remove-product-${count}`).addClass('fa-close btn-danger');
    });
    $('#products-form').on('click', '.fa-close', function (event) {
        const parent_remove = $(event.target).parents()[2];
        $(parent_remove).prev().attr('id', 'products-row');
        $(parent_remove).remove();
    });
    $('#submit-button').click(function(event) {
        console.log('Evento disparado')
        const products_div = $('#products-form').find('div.row-identifier');
        for(let count_product=0; count_product < products_div.length; count_product++) {
            const inputs = $(products_div[count_product]).find('input');
            arrayJson.push({});
            for(let count_input=0; count_input < inputs.length; count_input++) {
                const input_name = $(inputs[count_input]).attr('name');
                const input_val = $(inputs[count_input]).val();
                arrayJson[count_product][input_name] = input_val;
            }
            const unit_measurement = $(products_div[count_product]).find('#unit_measurement').val();
            arrayJson[count_product]['unit_measurement'] = unit_measurement;
            arrayJson[count_product] = JSON.stringify(arrayJson[count_product]);
        }
        $.post('/new-donate', {'products[]': arrayJson}, function(data){
            location.reload();
        });
    });
})
