import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseNucleaseObject where
  dnaSubstrate : Type
  helicaseDomain : Type
  nucleaseDomain : Type
  atpBinding : Prop
  translocationActivity : Prop
  cleavageActivity : Prop
  couplingValid : atpBinding ∧ translocationActivity ∧ cleavageActivity

structure AdmissibleClass where
  object : HelicaseNucleaseObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HelicaseNucleaseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HelicaseNucleaseWitnessClosed (O : HelicaseNucleaseObject) : Prop :=
  O.couplingValid

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
