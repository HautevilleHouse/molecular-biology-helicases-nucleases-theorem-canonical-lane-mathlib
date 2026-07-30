import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure DNARepairPackage where
  nucleaseCleavage : NucleaseCleavagePackage
  helicaseUnwinding : HelicaseUnwindingPackage
  damageRecognition : Prop
  repairSynthesis : Prop
  ligation : Prop

structure DNARepairEvidence (D : DNARepairPackage) where
  damageRecognitionClosed : D.damageRecognition
  repairSynthesisClosed : D.repairSynthesis
  ligationClosed : D.ligation

def DNARepairClosed (D : DNARepairPackage) : Prop :=
  D.damageRecognition ∧ D.repairSynthesis ∧ D.ligation

theorem dna_repair_closed_from_evidence (D : DNARepairPackage)
    (E : DNARepairEvidence D) : DNARepairClosed D := by
  exact And.intro E.damageRecognitionClosed
    (And.intro E.repairSynthesisClosed E.ligationClosed)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse