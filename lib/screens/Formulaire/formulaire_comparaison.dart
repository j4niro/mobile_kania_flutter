import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FormComp extends StatelessWidget {
  const FormComp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ElevatedButton(
                        onPressed: () {context.go('/formcomp') ;},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF7900),
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Remplir formulaire',
                          style: TextStyle(
                            color: const Color(0xFFF9F9F9),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF7900),
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Importer une facture',
                          style: TextStyle(
                            color: const Color(0xFFF9F9F9),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF7900),
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Scanner une facture',
                          style: TextStyle(
                            color: const Color(0xFFF9F9F9),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
                        ],
                      ),
            ),
        SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF9F9F9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AJOUT D'UNE FACTURE",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                      ),
                      const SizedBox(height: 16.0),
                      Form(
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              child: TextFormField(
                                cursorColor: const Color(0XFFff7900),
                                decoration: InputDecoration(
                                  labelText: 'Numéro de facture',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF8E8E96),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                      width: 1.0,
                                    ),
                                  ),
                                  floatingLabelStyle: TextStyle(
                                    color: Color(0xFFFF7900),
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Container(
                              color: Colors.white,
                              child: TextFormField(
                                cursorColor: const Color(0XFFff7900),
                                decoration: InputDecoration(
                                  labelText: 'Montant',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF8E8E96),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                      width: 1.0,
                                    ),
                                  ),
                                   floatingLabelStyle: TextStyle(
                                    color: Color(0xFFFF7900),
            
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Début",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Container(
                                        color: Colors.white,
                                        child: TextFormField(
                                          readOnly: true,
                                          onTap: () async {
                                            DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2101),
                                            );
                                            if (pickedDate != null) {
                                              
                                            }
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF7900), 
                                                width: 2.0,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0XFFDADADA), 
                                              ),
                                            ),
                                             floatingLabelStyle: TextStyle(
                                              color: Color(0xFFFF7900),
                                               )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Fin",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Container(
                                        color: Colors.white,
                                        child: TextFormField(
                                          readOnly: true,
                                          onTap: () async {
                                            DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2101),
                                            );
                                            if (pickedDate != null) {
                                              // Gestion de la date sélectionnée
                                            }
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF7900), // Couleur orange
                                                width: 2.0,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                                width: 1.0,
                                              ),
                                            ),
                                             floatingLabelStyle: TextStyle(
                                                color: Color(0xFFFF7900)
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),
                            Container(
                              color: Colors.white,
                              child: TextFormField(
                                cursorColor: const Color(0XFFff7900),
                                decoration: InputDecoration(
                                  labelText: 'Consommation en KWh',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF8E8E96),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                      width: 1.0,
                                    ),
                                  ),
                                  floatingLabelStyle: TextStyle(
                                   color: Color(0xFFFF7900)
                                 )
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Container(
                              color: Colors.white,
                              child: TextFormField(
                                cursorColor: const Color(0XFFff7900),
                                decoration: InputDecoration(
                                  labelText: 'Prestataire',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF8E8E96),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                      width: 1.0,
                                    ),
                                  ),
                                  floatingLabelStyle: TextStyle(
                                     color: Color(0xFFFF7900)
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  child: TextFormField(
                                    cursorColor: const Color(0XFFff7900),
                                    decoration: InputDecoration(
                                      labelText: 'Nom du site',
                                      labelStyle: TextStyle(
                                    color: Color(0xFF8E8E96),
                                  ),
                                      border: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF7900), // Couleur orange
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0XFFDADADA), // Couleur de la bordure par défaut
                                          width: 1.0,
                                        ),
                                      ),
                                      floatingLabelStyle: TextStyle(
                                        color: Color(0xFFFF7900)
                                      )
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 50,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Ajoutez ici la logique lorsque le bouton est pressé
                                  },
                                  child: const Text(
                                    'Ajouter',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500 // Couleur du texte en blanc
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFF7900), // Couleur orange
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    fixedSize: const Size.fromHeight(50),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}







