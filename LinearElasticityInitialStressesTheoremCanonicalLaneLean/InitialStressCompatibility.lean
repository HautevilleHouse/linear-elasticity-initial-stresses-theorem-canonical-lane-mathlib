import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressCompatibilityPackage where
  stressFreeReference : Prop
  initialStressSelfEquilibrated : Prop
  strainDisplacementCompatibility : Prop
  materialConsistency : Prop

structure InitialStressCompatibilityEvidence (I : InitialStressCompatibilityPackage) where
  stressFreeReferenceClosed : I.stressFreeReference
  initialStressSelfEquilibratedClosed : I.initialStressSelfEquilibrated
  strainDisplacementCompatibilityClosed : I.strainDisplacementCompatibility
  materialConsistencyClosed : I.materialConsistency

def InitialStressCompatibilityClosed (I : InitialStressCompatibilityPackage) : Prop :=
  I.stressFreeReference ∧ I.initialStressSelfEquilibrated ∧
  I.strainDisplacementCompatibility ∧ I.materialConsistency

theorem initial_stress_compatibility_closed_from_evidence
    (I : InitialStressCompatibilityPackage) (Ev : InitialStressCompatibilityEvidence I) :
    InitialStressCompatibilityClosed I := by
  exact And.intro Ev.stressFreeReferenceClosed
    (And.intro Ev.initialStressSelfEquilibratedClosed
      (And.intro Ev.strainDisplacementCompatibilityClosed Ev.materialConsistencyClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse