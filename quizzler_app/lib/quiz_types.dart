import 'question.dart';

List quizTypes = [generalKnowledge(), vocabulary(), guinnessWorldRecords()];

List generalKnowledge() {
  List<Question> _generalKnowledge = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  return _generalKnowledge;
}

List vocabulary() {
  List<Question> _vocabulary = [
    Question('A river is bigger than a stream.', true),
    Question('There are one thousand years in a CENTURY.', false),
    Question('FOUNDED is the past tense of FOUND.', true),
    Question('ANSWER can be used as a noun and a verb.', true),
    Question('SCARLET is a brilliant red colour.', true),
    Question('USED TO DOING and USED TO DO mean the same thing.', false),
    Question('You can use IMPROVE as a noun and as a verb.', false),
    Question('DOZEN is equivalent to 20.', false),
    Question('The past tense of FIND is FOUND.', true),
    Question(' EQUIVALENT TO is (more or less) the same as EQUAL TO.', true),
  ];

  return _vocabulary;
}

List guinnessWorldRecords() {
  List<Question> _guinnessWorldRecords = [
    Question(
        'A man from the USA consumed his 26,000th Big Mac on 11th October 2012, after eating at least one a day for forty years. (11th October 2012)',
        true),
    Question(
        'The longest distance swam underwater in one breath is 200metres. (6th November 2008)',
        true),
    Question(
        'The fastest time to eat 15 Ferrero Rocher is 1 minute 10 seconds. (24th October 2014)',
        false),
    Question(
        'The record for most needles inserted into the head is 15,000. (11th June 2013)',
        false),
    Question(
        'The world’s longest legs belong to a Russian lady and measure 132cm (51.9 inches) (8th July 2003)',
        true),
    Question(
        'The heaviest aircraft pulled by a single man weighed 188.83 tonnes and was pulled 8.8 metres. (17th September 2009)',
        true),
    Question(
        'The record for the fastest time to solve a Rubik’s Cube one-handed is 37 seconds. (26th April 2014)',
        false),
    Question(
        'The world’s tallest living man is 251cm / 8 ft 3 in. (9th February 2011)',
        true),
    Question(
        'The most expensive car number plate, showing only the number ‘1’, was bought in the United Arab Emirates for 52.2 million dirham, the approximate equivalent of £7.2 million. (16th February 2008)',
        true),
    Question(
        'The record for the longest rail tunnel is held by the Channel Tunnel between Britain and France. (15th October 2010)',
        false),
  ];

  return _guinnessWorldRecords;
}
