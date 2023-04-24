import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/quotes/presentation/cubit/add_quote_cubit.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

final GlobalKey<FormState> _formKey = GlobalKey();

class AddQuotePage extends StatefulWidget {
  const AddQuotePage({Key? key}) : super(key: key);

  @override
  State<AddQuotePage> createState() => _AddQuotePageState();
}

class _AddQuotePageState extends State<AddQuotePage> {
  final TextEditingController _contentTextController = TextEditingController(text: '');
  final TextEditingController _authorTextController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AddQuoteCubit>(),
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).addQuote),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildLabel(S.of(context).quote),
                    const SizedBox(height: 6),
                    _buildTextFormField(
                      controller: _contentTextController,
                      validationTextMessage: S.of(context).pleaseEnterQuote,
                      hintText: S.of(context).enterQuote,
                    ),
                    const SizedBox(height: 16),
                    _buildLabel(S.of(context).author),
                    const SizedBox(height: 6),
                    _buildTextFormField(
                      controller: _authorTextController,
                      validationTextMessage: S.of(context).pleaseEnterAuthor,
                      hintText: S.of(context).enterAuthor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildAddNewQuoteButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.deepPurpleAccent,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String validationTextMessage,
    required String hintText,
  }) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return validationTextMessage;
        }
        return null;
      },
      autocorrect: false,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget _buildAddNewQuoteButton(BuildContext context) {
    return ElevatedButton(
      child: Text(
        S.of(context).addQuote.toUpperCase(),
        style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(color: Colors.deepPurpleAccent),
          ),
        ),
      ),
      onPressed: () async {
        if (_formKey.currentState != null && _formKey.currentState!.validate()) {
          await context.read<AddQuoteCubit>().addQuote(
                const Uuid().v4(),
                _contentTextController.text,
                _authorTextController.text,
                _contentTextController.text.length,
              );

          Navigator.pop(context);
        }
      },
    );
  }
}
