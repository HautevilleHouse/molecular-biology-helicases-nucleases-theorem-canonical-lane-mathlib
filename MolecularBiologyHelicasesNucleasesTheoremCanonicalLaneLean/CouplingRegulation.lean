import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure CouplingRegulationPackage (A : AdmissibleClass) where
  atpAllostery : Prop
  dnaBindingRegulation : Prop
  domainCommunication : Prop
  regulatoryInteraction : Prop
  atpAllosteryClosed : atpAllostery
  dnaBindingRegulationClosed : dnaBindingRegulation
  domainCommunicationClosed : domainCommunication
  regulatoryInteractionClosed : regulatoryInteraction

def CouplingRegulationClosed (A : AdmissibleClass) (P : CouplingRegulationPackage A) : Prop :=
  P.atpAllostery ∧ P.dnaBindingRegulation ∧ P.domainCommunication ∧ P.regulatoryInteraction

theorem coupling_regulation_closed_from_evidence (A : AdmissibleClass) (P : CouplingRegulationPackage A) :
    CouplingRegulationClosed A P := by
  exact And.intro P.atpAllosteryClosed
    (And.intro P.dnaBindingRegulationClosed
      (And.intro P.domainCommunicationClosed P.regulatoryInteractionClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
