$(document).ready(function() {
	
	$('#myDatepicker2').datetimepicker({
		format: 'YYYY/MM/DD'
	});
	$('#myDatepicker3').datetimepicker({
		format: 'YYYY/MM/DD'
	});
	$('#myDatepicker4').datetimepicker({
		format: 'YYYY/MM/DD'
	});


	var selectTable = $("#select-table").DataTable({
		searching: false,
		paging: false,
		lengthChange: false,
		info: false,
		columnDefs: [ 
			{
				orderable: false,
	            className: 'select-checkbox',
		        targets: 0
			}
		],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]],
        scrollY: 300,
        scrollX:true,
        dom: 'Zlfrtip',
		colResize: {
			"tableWidthFixed": false
		}
	});
	
	$("#table-test1").DataTable({
		searching: false,
		paging: false,
		lengthChange: false,
		info: false,
		columnDefs: [ 
			{
				orderable: false,
	            className: 'select-checkbox',
		        targets: 0
			}
		],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]],
        scrollY: 300,
        scrollX:true
	});
	
	$("#table-test2").DataTable({
		searching: false,
		paging: false,
		lengthChange: false,
		info: false,
		columnDefs: [ 
			{
				orderable: false,
	            className: 'select-checkbox',
		        targets: 0
			}
		],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]],
        scrollY: 400,
        scrollX:true
	});
	
})	
	