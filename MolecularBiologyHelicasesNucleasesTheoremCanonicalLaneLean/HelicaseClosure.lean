import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseNucleaseObject where
  dnaSubstrate : Type
  helicaseDomain : Prop
  nucleaseDomain : Prop
  atpBindingSite : Prop
  translocationActivity : Prop
  cleavageActivity : Prop
  unwindingProcessive : Prop
  cuttingPrecise : Prop

structure AdmissibleHelicaseNucleaseClass where
  object : HelicaseNucleaseObject
  endpointStatus : Prop
  remainderCarried : Prop
  gateIndicator : endpointStatus ∨ remainderCarried

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
