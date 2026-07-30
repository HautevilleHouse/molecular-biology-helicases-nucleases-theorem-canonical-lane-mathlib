import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedHelicaseNucleaseObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HelNucWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse