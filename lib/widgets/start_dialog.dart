import 'package:flutter/material.dart';
import 'package:playcodestudios/styles/button_style.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/leads_provider.dart';
import '../providers/servicios_provider.dart';
import '../styles/form_input_decoration.dart';

class StartDialog extends StatefulWidget {
  final AllServices? tipo;
  const StartDialog({super.key, this.tipo});

  @override
  State<StartDialog> createState() => _StartDialogState();
}

class _StartDialogState extends State<StartDialog> {
  final _formKeyContact = GlobalKey<FormState>();
  String nombre = '';
  String email = '';
  String telf = '';
  String description = '';
  AllServices proyectType = AllServices.disenoGrafico;
  String budget = '';
  bool gracias = false;

  late String valueIndex;
  late String proyectTypeString = '';

  @override
  void initState() {
    if (proyectType == AllServices.consultaService) {
      valueIndex = '0';
      proyectTypeString = 'CONSULTA GRATUITA';
    }
    if (proyectType == AllServices.disenoWeb) {
      valueIndex = '1';
      proyectTypeString = 'DISEÑO WEB';
    }
    if (proyectType == AllServices.disenoBrand) {
      valueIndex = '2';
      proyectTypeString = 'LOGO E IDENTIDAD';
    }
    if (proyectType == AllServices.disenoUi) {
      valueIndex = '3';
      proyectTypeString = 'PROTOTIPOS UI/UX';
    }
    if (proyectType == AllServices.disenoGrafico) {
      valueIndex = '4';
      proyectTypeString = 'DISEÑO GRÁFICO';
    }
    if (proyectType == AllServices.disenoApp) {
      valueIndex = '5';
      proyectTypeString = 'DISEÑO DE APPS';
    }
    if (proyectType == AllServices.devWeb) {
      valueIndex = '6';
      proyectTypeString = 'DESARROLLO WEB';
    }
    if (proyectType == AllServices.devApps) {
      valueIndex = '7';
      proyectTypeString = 'DESARROLLO APPS';
    }

    if (proyectType == AllServices.devSys) {
      valueIndex = '8';
      proyectTypeString = 'DESARROLLO SYSTEMAS';
    }

    if (proyectType == AllServices.marketingSeo) {
      valueIndex = '9';
      proyectTypeString = 'MARKETING SEO';
    }

    if (proyectType == AllServices.marketingPPC) {
      valueIndex = '10';
      proyectTypeString = 'MARKETING PPC';
    }

    if (proyectType == AllServices.marketingRRSS) {
      valueIndex = '11';
      proyectTypeString = 'REDES SOCIALES';
    }

    if (proyectType == AllServices.marketingContenido) {
      valueIndex = '12';
      proyectTypeString = 'MARKETING DE CONTENIDO';
    }
    if (proyectType == AllServices.fotoVideo) {
      valueIndex = '13';
      proyectTypeString = 'FOTOGRAFÍA Y VIDEO';
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: Dialog(
        elevation: 0,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: bgColor, borderRadius: BorderRadius.circular(16)),
            constraints: const BoxConstraints(maxWidth: 500),
            width: double.infinity,
            // height: 700,
            child: (gracias)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699401479/assets/logo_blanco_h_3_xgir3s.png',
                        width: 200,
                      ),
                      const SizedBox(height: 25),
                      const Text('Gracias por escribirnos.'),
                      const Text(
                        'Nuestro equipo revisará tu mensaje y se pondrá en contacto lo mas pronto posible.',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25),
                      FilledButton(
                          style: BotonStyle.botonStyleSec,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'CERRAR',
                            style: textBoton(context, false),
                          ))
                    ],
                  )
                : Column(
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        'TIENES UN PROYECTO EN MENTE?',
                        textAlign: TextAlign.center,
                        style: text22Title(context),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Queremos conocer tus necesidades, tus objetivos y tus expectativas, para poder ofrecerte una solución personalizada y adaptada a tu negocio.',
                        textAlign: TextAlign.center,
                        style: text14BodyM(context),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 400, minWidth: 320),
                        child: Form(
                          key: _formKeyContact,
                          child: Column(children: [
                            TextFormField(
                              initialValue: nombre,
                              decoration: FormDecor.formFieldInputDecoration(
                                  context: context,
                                  label: 'Nombre',
                                  icon: Icons.person),
                              onChanged: (value) => setState(() {
                                nombre = value;
                              }),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              initialValue: email,
                              decoration: FormDecor.formFieldInputDecoration(
                                  context: context,
                                  label: 'Correo',
                                  icon: Icons.email),
                              onChanged: (value) => setState(() {
                                email = value;
                              }),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              initialValue: telf,
                              decoration: FormDecor.formFieldInputDecoration(
                                  context: context,
                                  label: 'Teléfono',
                                  icon: Icons.phone),
                              onChanged: (value) => setState(() {
                                telf = value;
                              }),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: primaryColor.withOpacity(0.3))),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: DropdownButton(
                                  dropdownColor: bgColor,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  isExpanded: true,
                                  value: valueIndex,
                                  underline: Container(),
                                  items: const [
                                    DropdownMenuItem(
                                        value: '0',
                                        child: Text('Consulta Gratuita')),
                                    DropdownMenuItem(
                                        value: '1', child: Text('Diseño Web')),
                                    DropdownMenuItem(
                                        value: '2',
                                        child: Text('Logo e Identidad')),
                                    DropdownMenuItem(
                                        value: '3',
                                        child: Text('Prototipos UI/UX')),
                                    DropdownMenuItem(
                                        value: '4',
                                        child: Text('Diseño Gráfico')),
                                    DropdownMenuItem(
                                        value: '5',
                                        child: Text('Diseño de Apps')),
                                    DropdownMenuItem(
                                        value: '6',
                                        child: Text('Desarrollo web')),
                                    DropdownMenuItem(
                                        value: '7',
                                        child: Text('Desarrollo de Apps')),
                                    DropdownMenuItem(
                                        value: '8',
                                        child: Text('Desarrollo de Sistemas')),
                                    DropdownMenuItem(
                                        value: '9',
                                        child: Text('Marketing SEO')),
                                    DropdownMenuItem(
                                        value: '10',
                                        child: Text('Marketing PPC')),
                                    DropdownMenuItem(
                                        value: '11',
                                        child: Text('Marketing RRSS')),
                                    DropdownMenuItem(
                                        value: '12',
                                        child: Text('Marketing de Contenido')),
                                    DropdownMenuItem(
                                        value: '13',
                                        child: Text('Fotografía y Video')),
                                  ],
                                  onChanged: (value) => setState(() {
                                        valueIndex = value!;
                                      })),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              initialValue: description,
                              maxLines: 2,
                              decoration: FormDecor.formFieldInputDecoration(
                                  context: context,
                                  label: 'Comentanos sobre tu proyecto',
                                  icon: Icons.comment),
                              onChanged: (value) => setState(() {
                                description = value;
                              }),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: primaryColor.withOpacity(0.3))),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: DropdownButton(
                                  dropdownColor: bgColor,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  isExpanded: true,
                                  value: budget,
                                  underline: Container(),
                                  items: const [
                                    DropdownMenuItem(
                                        value: '', child: Text('Presupuesto')),
                                    DropdownMenuItem(
                                        value: '<500',
                                        child: Text('menos de 500\$')),
                                    DropdownMenuItem(
                                        value: '<1000',
                                        child: Text('menos de 1000\$')),
                                    DropdownMenuItem(
                                        value: '<2000',
                                        child: Text('menos de 2000\$')),
                                    DropdownMenuItem(
                                        value: '<5000',
                                        child: Text('menos de 5000\$')),
                                    DropdownMenuItem(
                                        value: 'nolimit',
                                        child: Text('Sin limite')),
                                  ],
                                  onChanged: (value) => setState(() {
                                        budget = value.toString();
                                      })),
                            ),
                            const SizedBox(height: 15),
                          ]),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Spacer(),
                          if (!gracias)
                            ElevatedButton(
                                style: BotonStyle.botonStyle,
                                onPressed: () async {
                                  final isOk = await Provider.of<LeadsProvider>(
                                          context,
                                          listen: false)
                                      .createLead(
                                          nombre: nombre,
                                          email: email,
                                          telf: telf,
                                          description: description,
                                          proyectType: proyectTypeString,
                                          budget: budget);
                                  if (isOk) {
                                    setState(() {
                                      gracias = true;
                                    });
                                  }
                                },
                                child: Text(
                                  'ENVIAR',
                                  style: textBoton(context, false),
                                )),
                          const SizedBox(width: 15),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Colors.redAccent,
                              )),
                          const SizedBox(width: 15),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
