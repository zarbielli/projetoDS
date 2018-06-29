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
    $('#user-managments').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#user-managments').addClass('active');
        $('#content-user-managments').fadeIn(600);
    })
    $('#new-donate').click(function(){
        let id = $('.active').attr('id');
        $('#'+id).removeClass('active');
        $('#content-'+id).fadeOut(500);
        $('#new-donate').addClass('active');
        $('#content-new-donate').fadeIn(600);
    })
});