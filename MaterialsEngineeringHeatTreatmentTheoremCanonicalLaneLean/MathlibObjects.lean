import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MaterialSample where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialsAdmittedObject where
  sample : MaterialSample
  phaseTransformation : Prop
  heatTreatmentCycle : Prop
  optimizedProperties : Prop
  conclusion : optimizedProperties

structure HeatTreatmentEndgameState where
  object : MaterialsAdmittedObject

def HeatTreatmentWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.optimizedProperties

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse