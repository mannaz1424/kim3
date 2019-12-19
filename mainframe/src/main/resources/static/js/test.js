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
	$('#myDatepicker5').datetimepicker({
		format: 'YYYY/MM/DD'
	});
	$('#myDatepicker6').datetimepicker({
		format: 'YYYY/MM/DD'
	});
  
	$('#datatable-test').DataTable({
		ajax: "/resources/js/test.json",
		columns : [
			{data: "NO"},
			{data: "test1"},
			{data: "test2"},
			{data: "test3"},
			{data: "test4"},
			{data: "test5"},
			{data: "test6"},
			{data: "test7"}
		],
		lengthChange: false,
		searching: false,
		paging: false,
		info: false,
		scrollX: false,
		scrollY: 200
	});
	$("#datatable-test2").DataTable({
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
        scrollY: 130,
        scrollX:true
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
//	$('#select-table').on('dblclick', 'tr', function () {
//	    var data = selectTable.row( this );
//		console.log(data);
//	});
})