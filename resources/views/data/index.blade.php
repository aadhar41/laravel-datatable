<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
        <style>
            body {
                padding: 40px;
            }
        </style>

        <!-- Bootstrap CSS -->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">
    </head>
    <body>
        <!-- jQuery -->
        <script src="//code.jquery.com/jquery.js"></script>
        <!-- DataTables -->
        <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


        <div class="row">
            <div class="col-md-12">
                <div class="card">

                    <div class="card-body">
                        <div class="row" style="margin: 5px 0;">
                            <div class="col-lg-8 text-muted">
                                <div class="col-lg-4">
                                    <h3>FILTERS</h3>
                                </div>
                            </div>
                            
                        </div>
                       
                            <div class="row col-md-12"> 
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Name </label>
                                        {{Form::text('name', null, array('placeholder'=>'Name','id'=>'name','class'=>'form-control', 'autocomplete' => 'off'))}}
                                    </div>
                                </div> 

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Role </label>

                                        {{ Form::select('role', array('0' => 'Admin', '1' => 'User'), 'S',['placeholder'=>'Select Role ','id'=>'role','class'=>'form-control']) }}
                                        
                                    </div>
                                </div> 

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Status</label>
                                         {{ Form::select('status', array('0' => 'Inactive', '1' => 'Active'),'S',['placeholder'=>'Select Status ','id'=>'status','class'=>'form-control']) }}
                                    </div>
                                </div>
                            </div> 
                            

                    </div>

                    <div class="card-body">
                        <h4 class="card-title">{{$title}}
                       
                        </h4>
         
                        <hr> 
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-sm" id="products-table">
                                <thead>
                                    <th>S.No</th>    
                                    <th>Name</th>    
                                    <th>Email</th>    
                                    <th>Status</th>    
                                    <th>Role</th>    
                                    <th>Created At</th>    
                                    <th width="100">Action</th>    
                                </thead> 
                            </table>  
                        </div>  
                    </div>
                </div>
            </div>
        </div>


<script>
     var oTable =$('#products-table').DataTable({
        processing: true,
        "searching": true,
        serverSide: true, 
         ajax:{
            url : '{!! route('data.datatables') !!}',
            data: function (d) {
                
                d.role = $('#role').val(); 
                d.status = $('#status').val(); 
                d.name = $('#name').val(); 
            }
        },
    
        columns: [
            {data: 'id', name: 'id'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'status', name: 'status'}, 
            {data: 'role', name: 'role'}, 
            {data: 'created_at', name: 'created_at'}, 
            {data: 'action', name: 'action', orderable: false, searchable: false}
        ],
        order:[[0,'desc']],
        searching:false,
        // bLengthChange:false,
    });


    $('#role').on('change', function(e) {
        oTable.draw();
        e.preventDefault();
    });


    $('#status').on('change', function(e) {
        oTable.draw();
        e.preventDefault();
    });

    $('#name').on('keyup', function(e) {
        oTable.draw();
        e.preventDefault();
    });
</script>

        <!-- jQuery -->
        <script src="//code.jquery.com/jquery.js"></script>
        <!-- DataTables -->
        <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <br><br><br>
    </body>
</html>
