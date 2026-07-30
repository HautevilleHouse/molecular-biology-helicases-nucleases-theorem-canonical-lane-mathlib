import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.HelicaseNucleaseObject

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure CoordinationRegulationPackage (O : HelNucDomain) where
  helicaseNucleaseCoupling : Prop
  allostericControl : Prop
  regulatoryFactorBinding : Prop
  temporalSequencing : Prop
  coordinationClosed : Prop
  helicaseNucleaseCouplingTerm : helicaseNucleaseCoupling
  allostericControlTerm : allostericControl
  regulatoryFactorBindingTerm : regulatoryFactorBinding
  temporalSequencingTerm : temporalSequencing
  coordinationEvidenceTerm : coordinationClosed

def CoordinationRegulationClosed (O : HelNucDomain) (C : CoordinationRegulationPackage O) : Prop :=
  C.helicaseNucleaseCoupling ∧ C.allostericControl ∧
  C.regulatoryFactorBinding ∧ C.temporalSequencing ∧ C.coordinationClosed

theorem coordination_regulation_closed_from_evidence (O : HelNucDomain) (C : CoordinationRegulationPackage O) :
    CoordinationRegulationClosed O C := by
  exact And.intro C.helicaseNucleaseCouplingTerm
    (And.intro C.allostericControlTerm
      (And.intro C.regulatoryFactorBindingTerm
        (And.intro C.temporalSequencingTerm C.coordinationEvidenceTerm)))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse