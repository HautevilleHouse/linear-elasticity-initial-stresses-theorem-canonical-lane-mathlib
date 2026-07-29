import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure ElasticityBody where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElasticityAdmittedObject where
  body : ElasticityBody
  initialStressesSatisfied : Prop
  equilibriumCondition : Prop
  boundaryConditions : Prop
  conclusion : initialStressesSatisfied ∧ equilibriumCondition ∧ boundaryConditions

def ElasticityWitnessClosed (O : ElasticityAdmittedObject) : Prop :=
  O.initialStressesSatisfied ∧ O.equilibriumCondition ∧ O.boundaryConditions

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse