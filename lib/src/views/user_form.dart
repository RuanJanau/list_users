import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relatório de Usuários'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState?.validate();

              _form.currentState?.save();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'nome invalido';
                  }
                  if (value.trim().length < 3) {
                    return 'nome muito pequeno. No minimo 3 letras.';
                  }
                  return null;
                },
                onSaved: (value) => _formData['name'] = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'e-mail'),
                onSaved: (value) => _formData['e-mail'] = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Url do Avatar'),
                onSaved: (value) => _formData['avatrUrl'] = value!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
