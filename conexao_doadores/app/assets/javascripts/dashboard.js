$(document).ready(function(){
    $('#dashboard').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#dashboard').addClass('active');
        $('#content-dashboard').fadeIn(600);
    })
    $('#user').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#user').addClass('active');
        $('#content-user').fadeIn(600);
    })
    $('#donates').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#donates').addClass('active');
        $('#content-donates').fadeIn(600);
    })
    $('#products').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#products').addClass('active');
        $('#content-products').fadeIn(600);
    })
    $('#user-managments').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#user-managments').addClass('active');
        $('#content-user-managments').fadeIn(600);
    })
    $('#notifications').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#notifications').addClass('active');
        $('#content-notifications').fadeIn(600);
    })
});