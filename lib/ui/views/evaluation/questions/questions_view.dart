
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/models/answer.dart';
import 'package:unahorro_mobile/models/question.dart';
import 'package:unahorro_mobile/ui/views/evaluation/questions/questions_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/loading_indicator.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class QuestionsView extends StatefulWidget {
  const QuestionsView({ Key? key }) :super(key: key);

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {

  QuestionsViewModel model = QuestionsViewModel();

  late Future<List<Question>> questions;

  int questionIndex = 0;
  int score = 0;
  bool btnPressed = false;

  List<String> topics = [
    "Tasa de interes",
    "Tasa de interes",
    "Tasa de interes",
    "Tasa de interes",
    "Tasa de interes"
  ];

  @override
  void initState() {
    super.initState();
    questions = model.questionsList();
  }


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, QuestionsViewModel model, Widget? child) => SafeArea(
        top: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,

          appBar: AppBar(
            backgroundColor: colors.background,
            elevation: 0,
            toolbarHeight: 100,
            leading: IconButton(
              icon: const Icon(Icons.close_outlined, color: colors.white),
              iconSize: 36,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),

          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 50),
              child: 
              model.isLoading
              ? const LoadingIndicator()
              : Column(
                children: <Widget>[
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          topics[questionIndex],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: colors.white,
                            fontFamily: "Lato",
                            fontSize: 24,
                            fontWeight: FontWeight.w900                      
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 60),
                    child: questionIndex < 5
                      ? FutureBuilder<List<Question>>(
                        future: questions,
                        builder: (context, snapshot) {
                          if(snapshot.hasData){
                            
                            return Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(bottom: 40),
                                  child: Text(
                                    snapshot.data![questionIndex].questionText,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      color: colors.white,
                                      fontFamily: "Lato",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400                      
                                    ),
                                  ),
                                ),

                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data![questionIndex].answers.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 60,
                                        child: ButtonTheme(
                                          height: 60,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                snapshot.data![questionIndex].answers[index].correct
                                                ? score += 1
                                                : score += 0;
                                                if(questionIndex == 4) {
                                                  model.navigateToHome();
                                                } else {
                                                  questionIndex += 1;
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              side: const BorderSide(
                                                width: 3,
                                                style: BorderStyle.solid,
                                                color: colors.white
                                              ),
                                              backgroundColor: colors.background,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30.0),
                                              ),
                                            ),
                                            child: Text(
                                              snapshot.data![questionIndex].answers[index].answerText,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                color: colors.white,
                                                fontFamily: "Lato",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )
                              ],
                            
                            );
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }
                          return const SizedBox();
                        }
                      )
                      : Column(
                        children: [
                          Padding(padding: const EdgeInsets.only(bottom: 40),
                            child: Text(
                              "Tu puntaje es de $score*20",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: colors.white,
                                fontFamily: "Lato",
                                fontSize: 18,
                                fontWeight: FontWeight.w400                      
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: colors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: const Text(
                                  "Finalizar",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: colors.white,
                                    fontFamily: "Lato",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500                      
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),

                  
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => QuestionsViewModel(),
    );
  }
}