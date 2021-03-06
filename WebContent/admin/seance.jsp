<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="include/head.jsp" />
<jsp:include page="include/nav.jsp" />
	<div class="wrapper">
       <div class="container-fluid">
			<div class="row">
                <div class="col-12">
                	<div class="page-title-box">
                        <div class="text-right">
                        	<a href="#" class="btn btn-primary waves-effect w-md mr-2 mb-2" data-toggle="modal" data-target="#Ajouter">
                               <i class="dripicons-plus mr-1"></i> Ajouter
                        	</a>
                        </div>
                    </div>
                    <div class="card-box table-responsive">
                    	<h3 class="m-t-0 header-title">Liste des seance</h3>
                        <table id="datatable-buttons" class="table table-hover m-0 tickets-list table-actions-bar dt-responsive nowrap" cellspacing="0" width="100%">
                            <thead>
	                            <tr>
	                            	<th>#</th>
	                                <th>filiere</th>
                                    <th>professeur</th>
                                    <th>salle</th>
                                    <th>matiere</th>
                                    <th>horaire</th>
                                    <th>Action</th>
	                            </tr>
                            </thead>
                            <tbody>
                            	<c:out value="${html}" escapeXml="false"/>                          
                            </tbody>
                            <tfoot>
	                            <tr>
	                            	<th>#</th>
	                                <th>filiere</th>
                                    <th>professeur</th>
                                    <th>salle</th>
                                    <th>matiere</th>
                                    <th>horaire</th>
                                    <th>Action</th>
	                            </tr>
	                        </tfoot>
                        </table>
                    </div>
                </div>
            </div>
       </div> <!-- end container -->
   </div>
   <!-- end wrapper -->
   <!--  Modal content for the above example -->
   <div id="Ajouter" class="modal fade" role="dialog" aria-labelledby="add" aria-hidden="true" style="display: none;">
       <div class="modal-dialog modal-lg">
           <div class="modal-content">
               <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                   <h4 class="modal-title" id="add">Ajouter seance</h4>
               </div>
               <div class="modal-body">
                   <form class="form-horizontal" method="POST" action="ajouter-seance.html">
			         <div class="row" id="ligne">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Professeur</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="professeur1">
                                        <c:out value="${professeur}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Salle</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="salle1">
                                        <c:out value="${salle}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Classe</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="classe1">
                                        <c:out value="${classe}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Matiere</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="matiere1">
                                        <c:out value="${matiere}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Horaire</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="horaire1">
                                        <c:out value="${horaire}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" value="1" class="form-control" name="cp" id="cp">
                    <div class="button-list text-right" style="padding-right: 50px;">
                         <button type="button" class="btn btn-facebook waves-effect waves-light" id="addLine">
                             Ajouter ligne
                         </button>

                         <button type="Submit" class="btn btn-twitter waves-effect waves-light">
                             Submit
                         </button>
                     </div>
			      </form>
               </div>
           </div><!-- /.modal-content -->
       </div><!-- /.modal-dialog -->
   </div>
   <!-- /.modal -->
      <!--  Modal content for the above example -->
   <div id="Modifier" class="modal fade" role="dialog" aria-labelledby="update" aria-hidden="true" style="display: none;">
       <div class="modal-dialog modal-lg">
           <div class="modal-content">
               <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                   <h4 class="modal-title" id="update">Modifier seance</h4>
               </div>
               <div class="modal-body">
               	 <form class="form-horizontal" method="POST" action="modifier-seance.html">
                   <div class="row" >
                   		 <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Professeur</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="professeur" id="professeur">
                                        <c:out value="${professeur}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Salle</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="salle" id="salle">
                                        <c:out value="${salle}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Classe</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="classe" id="classe">
                                        <c:out value="${classe}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Matiere</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="matiere" id="matiere">
                                        <c:out value="${matiere}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Horaire</label>
                                <div class="col-lg-9">
                                    <select class="form-control select2-jour" name="horaire" id="horaire">
                                        <c:out value="${horaire}" escapeXml="false"/>   
                                    </select>
                                </div>
                            </div>
                        </div>
                   </div>
                   <input type="hidden" id="idSeance" name="idSeance">
                   <div class="button-list text-right" style="padding-right: 50px;">
                         <button type="Submit" class="btn btn-twitter waves-effect waves-light">
                             Submit
                         </button>
                     </div>
                 </form>
               </div>
           </div><!-- /.modal-content -->
       </div><!-- /.modal-dialog -->
   </div>
   <!-- /.modal -->
    <!-- model supprimer -->
    <div id="supprimer" class="modal custom-modal fade" role="dialog" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content modal-md">
                <div class="modal-header">
                 	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                    <h4 class="modal-title">Supprimer seance</h4>
                </div>
                <form method="POST" action="delete-seance.html">
                    <input type="hidden" id="idSup" name="idSup">
                    <div class="modal-body card-box">
                        <p>Voulez-vous vraiment supprimer ?</p>
                        <div class="m-t-20"> 
                        	<a href="#" class="btn btn-success btn-rounded waves-light waves-effect" data-dismiss="modal">Fermer</a>
                            <button type="submit" class="btn btn-danger btn-rounded waves-light waves-effect">Supprimer</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- end -->
<jsp:include page="include/footer.jsp" />
<jsp:include page="include/script.jsp" />
<script type="text/javascript">
    $(document).ready(function() {

        //Buttons examples
        var table = $('#datatable-buttons').DataTable({
       		"language": {
                 "decimal":        "",
                 "emptyTable":     "Aucune donn�e disponible dans la table",
                 "infoFiltered":   "(filtr� du nombre total d'entr�es)",
                 "infoEmpty":      "Affiche 0 � 0 de 0 entr�es",
                 "lengthMenu":     "",
                 "info": "Afficher la page _PAGE_ de _PAGES_",
                 "loadingRecords": "Chargement...",
                 "processing":     "En traitement...",
                 "search":         "Chercher :",
                 "zeroRecords":    "Aucun enregistrements correspondants trouv�s",
                 "paginate": {
                     "first":      "Premier",
                     "last":       "Dernier",
                     "next":       "Suivant",
                     "previous":   "Pr�c�dent"
                 },
                 "aria": {
                     "sortAscending":  ": Activer pour trier la colonne par ordre croissant",
                     "sortDescending": ": Activer pour trier la colonne par ordre d�croissant"
                 }
            },
            lengthChange: false,
            buttons: ['excel', 'pdf']
        });

        table.buttons().container()
                .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
        $(".select2-jour").select2();

        $( "#addLine" ).click(function() {
        	 var cp = $("#cp").val();
             cp++;
             var data = "<div class='col-md-4'> <div class='form-group'> <label class='col-lg-3 control-label'>Professeur</label> <div class='col-lg-9'> <select class='form-control select2-jour' name='professeur"+cp+"'> <c:out value='${professeur}' escapeXml='false'/> </select> </div> </div> </div> <div class='col-md-4'> <div class='form-group'> <label class='col-lg-3 control-label'>Salle</label> <div class='col-lg-9'> <select class='form-control select2-jour' name='salle"+cp+"'> <c:out value='${salle}' escapeXml='false'/> </select> </div> </div> </div> <div class='col-md-4'> <div class='form-group'> <label class='col-lg-3 control-label'>Classe</label> <div class='col-lg-9'> <select class='form-control select2-jour' name='classe"+cp+"'> <c:out value='${classe}' escapeXml='false'/> </select> </div> </div> </div> <div class='col-md-6'> <div class='form-group'> <label class='col-lg-3 control-label'>Matiere</label> <div class='col-lg-9'> <select class='form-control select2-jour' name='matiere"+cp+"'> <c:out value='${matiere}' escapeXml='false'/> </select> </div> </div> </div> <div class='col-md-6'> <div class='form-group'> <label class='col-lg-3 control-label'>Horaire</label> <div class='col-lg-9'> <select class='form-control select2-jour' name='horaire"+cp+"'> <c:out value='${horaire}' escapeXml='false'/> </select> </div> </div> </div>";
             $("#cp").attr("value",cp);
             $("#ligne").append(data);
             $(".select2-jour").select2({
                 width: "100%"
             });

       	});
        
        $( ".modifier" ).click(function() {
			$.ajax({
	        	url     : 'update-seance.html',
	        	method  : 'POST',
	        	data    : {id : this.getAttribute("data-update")},
	        	success : function(resultText){
                    const w = resultText.split('/');
                    
                    $("#idSeance").attr("value",w[0].trim());
                    $("#professeur").val(w[1].trim()).change();
                    $("#salle").val(w[2].trim()).change();
                    $("#classe").val(w[3].trim()).change();
                    $("#matiere").val(w[4].trim()).change();
                    $("#horaire").val(w[5].trim()).change();
                    
	        	},
	        	error : function(jqXHR, exception){
	        		console.log('Error occured!!');
	        	}
        	});
        });
        $( ".delete" ).click(function() {
        	document.querySelector("#idSup").setAttribute("value", this.getAttribute("data-delete"));
        });
    } );

</script>
<jsp:include page="include/fin.jsp" />