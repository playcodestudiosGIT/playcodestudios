import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/leads_provider.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:playcodestudios/styles/button_style.dart';
import 'package:playcodestudios/styles/form_input_decoration.dart';
import 'package:provider/provider.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final _formKeyContact = GlobalKey<FormState>();
  String nombre = '';
  String email = '';
  String telf = '';
  String description = '';
  bool gracias = false;

  @override
  void initState() {
    super.initState();

    nombre = '';
    email = '';
    telf = '';
    description = '';
    gracias = false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: wSize(context),
            height: hSize(context),
            child: Image(
              image: NetworkImage(
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702251151/assets/contactbg_bvs4jw.jpg'),
              fit: BoxFit.cover,
            )),
        Container(
          width: wSize(context),
          height: hSize(context),
          color: bgColor.withOpacity(0.8),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    constraints: const BoxConstraints(maxWidth: 900),
                    width: double.infinity,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  if (gracias) ...[
                    const Text('Gracias por escribirnos'),
                    const Text(
                        'Nuestro equipo revisará tu mensaje y se pondrá en contacto lo mas pronto posible.'),
                    const SizedBox(height: 15),
                    FilledButton(
                        style: BotonStyle.botonStyle,
                        onPressed: () {
                          NavigatorService.navigateTo(
                              context, Flurorouter.homeRoute);
                        },
                        child: Text(
                          'INICIO',
                          style: textBoton(context),
                        ))
                  ],
                  if (!gracias) ...[
                    Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.spaceAround,
                      spacing: 30,
                      runSpacing: 30,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            constraints: const BoxConstraints(
                                maxWidth: 400, minWidth: 320),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699401419/assets/logo_blanco_v_ngv1og.png',
                                  width: 200,
                                ),
                                const SizedBox(height: 30),
                                Text('Escríbenos',
                                    style: text32Headline(context)),
                                const SizedBox(height: 15),
                                Text(
                                    'Cuentanos tus ideas, proyectos ó estratégias que quieras ejecutar, nuestro equipo hará la magia. Elaboraremos un plan de acción que te será enviado como respuesta.',
                                    style: text14BodyM(context)),
                              ],
                            )),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          constraints: const BoxConstraints(
                              maxWidth: 400, minWidth: 320),
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
                              TextFormField(
                                initialValue: description,
                                maxLines: 5,
                                decoration: FormDecor.formFieldInputDecoration(
                                    context: context,
                                    label: 'Comentario',
                                    icon: Icons.comment),
                                onChanged: (value) => setState(() {
                                  description = value;
                                }),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    FilledButton(
                        style: BotonStyle.botonStyle,
                        onPressed: () async {
                          final isOk = await Provider.of<LeadsProvider>(context,
                                  listen: false)
                              .createLead(
                                  nombre: nombre,
                                  email: email,
                                  telf: telf,
                                  description: description,
                                  proyectType: 'Contacto',
                                  budget: '0');
                          if (isOk) {
                            setState(() {
                              gracias = true;
                            });
                          }
                        },
                        child: Text(
                          'ENVIAR',
                          style: textBoton(context),
                        )),
                  ],
                  const SizedBox(height: 45),
                  const Text('Tambien puedes contactarnos por estos medios'),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: IconButton(
                            icon: const Icon(FontAwesomeIcons.whatsapp),
                            hoverColor: Colors.white.withOpacity(0.05),
                            onPressed: () {},
                          )),
                      const SizedBox(width: 25),
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: IconButton(
                            icon: const Icon(FontAwesomeIcons.instagram),
                            hoverColor: Colors.white.withOpacity(0.05),
                            onPressed: () {},
                          )),
                    ],
                  ),
                  const SizedBox(height: 40),
                ]),
          ),
        ),
      ],
    );
  }
}
