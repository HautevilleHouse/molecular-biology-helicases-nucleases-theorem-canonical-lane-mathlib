import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.HelicaseNucleaseObject

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure SubstrateRecognitionPackage (O : HelNucDomain) where
  forkStructured : Prop
  junctionDetection : Prop
  overhangRecognition : Prop
  damageSensing : Prop
  recognitionClosed : Prop
  forkStructuredTerm : forkStructured
  junctionDetectionTerm : junctionDetection
  overhangRecognitionTerm : overhangRecognition
  damageSensingTerm : damageSensing
  recognitionEvidenceTerm : recognitionClosed

def SubstrateRecognitionClosed (O : HelNucDomain) (S : SubstrateRecognitionPackage O) : Prop :=
  S.forkStructured ∧ S.junctionDetection ∧ S.overhangRecognition ∧ S.damageSensing ∧ S.recognitionClosed

theorem substrate_recognition_closed_from_evidence (O : HelNucDomain) (S : SubstrateRecognitionPackage O) :
    SubstrateRecognitionClosed O S := by
  exact And.intro S.forkStructuredTerm
    (And.intro S.junctionDetectionTerm
      (And.intro S.overhangRecognitionTerm
        (And.intro S.damageSensingTerm S.recognitionEvidenceTerm)))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse