import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure ElasticityAdmittedObject where
  body : Type u
  topology : TopologicalSpace body
  bodyForce : body → ℝ
  tractionBoundary : Set body
  displacementBoundary : Set body
  initialStressField : body → (Fin 3 → Fin 3 → ℝ)
  equilibriumCondition : Prop
  constitutiveLaw : Prop
  boundaryConditionsMatched : Prop
  outcome : equilibriumCondition ∧ constitutiveLaw ∧ boundaryConditionsMatched
  conclusion : outcome

structure AdmissibleClass where
  object : ElasticityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ElasticityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse