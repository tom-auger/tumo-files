import jamspell
import os

corrector = jamspell.TSpellCorrector()
corrector.LoadLangModel(os.path.join(os.path.dirname(__file__), "datasets/en.bin"))

def correct_spelling(phrase):
    correction = corrector.FixFragment(phrase)

    if correction != phrase:
        return correction
    else:
        return None
    