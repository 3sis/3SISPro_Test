function fnReinstateFormControl(blankScreenId) {
    if (blankScreenId == '0') {
        $('#singleLevelDataEntryForm')[0].reset(); // To initialize all the fields on form.
        $('#action').val('Save');
        $('#button_action').val('insert');
        $('.modal-title').text('Add ' + $modalTitle);
    } else {
        $('#action').val('Edit');
        $('#button_action').val('update');
        $('.modal-title').text('Edit ' + $modalTitle);
    }
    $('#form_output').html(''); // To clear success message.
    $('#entryModalSmall').modal('show');
    $(document).find('span.error-text').text('');
    $(document).find('input.form-control').css({
        'border-color': '#66afe9',
        'outline': '0'
    });
}
function fnSuccessMsg(actionName,tableName,Id,Desc) {
    if(actionName == 'Added')
    {
        return "The Data is " + actionName + " Successfully<br>"
        + tableName + " | <b style='color: #F5821F'> " + Id +"<br> </b>"
        + "<b style='color: #F5821F'> " + Desc + ".";
    }else if(actionName == 'Edited')
    {
        return "The Data is " + actionName + " Successfully<br>"
        + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
        + "<b style='color: #F5821F'> " + Desc + ".";
    }else if(actionName == 'Deleted')
    {
        return "The Data is " + actionName + " Successfully<br>"
        + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
        + "<b style='color: #F5821F'> " + Desc + ".";
    }else(actionName == 'Restored')
    {
        return "The Data is " + actionName + " Successfully<br>"
        + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
        + "<b style='color: #F5821F'> " + Desc + ".";
    }
}

function fnConfirmationMsg(actionName,tableName,Id,Desc) {
    return "Do you want to " + actionName + "?<br>"
        + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
        + "<b style='color: #F5821F'> " + Desc + ".";
    // if(actionName == 'Save')
    // {
    //     return "Do you want to " + actionName + "?<br>"
    //     + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
    //     + "<b style='color: #F5821F'> " + Desc + ".";
    // }else if(actionName == 'Delete')
    // {
    //     return "Do you want to " + actionName + "?<br>"
    //     + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
    //     + "<b style='color: #F5821F'> " + Desc + ".";
    // }else(actionName == 'Restore')
    // {
    //     return "Do you want to " + actionName + "?<br>"
    //     + tableName + " | <b style='color: #F5821F'> " + Id +"<br></b>"
    //     + "<b style='color: #F5821F'> " + Desc + ".";
    // }
}
function fnSingleLevelFinalSave(masterName, Id, Desc1, updateMode) {

        return masterName + " for Id <b style='color: #F5821F'>" +
        Id + " [</b> <b style='color: #F5821F'>" + Desc1 + " ]</b> is " + updateMode + ' SUCCESSFULLY.';

}
function fnFormControlColorChange() {

    $('#form_output').html(''); // To clear success message.
    $('#entryModalSmall').modal('show');
    $(document).find('span.error-text').text('');
    $(document).find('input.form-control').css({
        'border-color': '#66afe9',
        'outline': '0'
    });
    $("textarea").css("border-color", "#66afe9");
    $("select").css("border-color", "#66afe9");

    // $(document).find("textarea").css({
    //     'border-color': '#F5821F',
    //     'outline': '0'
    // });
    // $(document).find('textarea.form-control').css({
    //     'border-color': rgb(102, 175, 233),
    //     'outline': '0'
    // });
}

