import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.SubstrateRecognition
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.TranslocationUnwinding
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.NucleaseCleavage
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.CoordinationRegulation

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelNucAnalyticFoundation where
  domain : HelNucDomain
  substrate : SubstrateRecognitionPackage domain
  translocation : TranslocationUnwindingPackage domain
  cleavage : NucleaseCleavagePackage domain
  regulation : CoordinationRegulationPackage domain
  substrateEvidence : SubstrateRecognitionEvidence substrate
  translocationEvidence : TranslocationUnwindingEvidence translocation
  cleavageEvidence : NucleaseCleavageEvidence cleavage
  regulationEvidence : CoordinationRegulationEvidence regulation

def HelNucAnalyticFoundationClosed (A : HelNucAnalyticFoundation) : Prop :=
  SubstrateRecognitionClosed A.domain A.substrate ∧
  TranslocationUnwindingClosed A.domain A.translocation ∧
  NucleaseCleavageClosed A.domain A.cleavage ∧
  CoordinationRegulationClosed A.domain A.regulation

theorem helnuc_analytic_foundation_closed_from_evidence
    (A : HelNucAnalyticFoundation) : HelNucAnalyticFoundationClosed A := by
  exact And.intro (substrate_recognition_closed_from_evidence A.domain A.substrate)
    (And.intro (translocation_unwinding_closed_from_evidence A.domain A.translocation)
      (And.intro (nuclease_cleavage_closed_from_evidence A.domain A.cleavage)
        (coordination_regulation_closed_from_evidence A.domain A.regulation)))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse