import { lazy, Suspense } from 'react'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Navigation from './components/layout/Navigation'
import Footer from './components/layout/Footer'
import ScrollProgress from './components/ui/ScrollProgress'

const Home = lazy(() => import('./pages/Home'))
const Artifacts = lazy(() => import('./pages/Artifacts'))
const ArmorSets = lazy(() => import('./pages/ArmorSets'))
const SpiritWeapons = lazy(() => import('./pages/SpiritWeapons'))
const Classes = lazy(() => import('./pages/Classes'))
const RaidBosses = lazy(() => import('./pages/RaidBosses'))
const InfiniteCastle = lazy(() => import('./pages/InfiniteCastle'))
const Companions = lazy(() => import('./pages/Companions'))
const DreamRate = lazy(() => import('./pages/DreamRate'))
const SkillTrees = lazy(() => import('./pages/SkillTrees'))
const Seasons = lazy(() => import('./pages/Seasons'))
const Quests = lazy(() => import('./pages/Quests'))
const Cooking = lazy(() => import('./pages/Cooking'))
const CraftForever = lazy(() => import('./pages/CraftForever'))
const Guilds = lazy(() => import('./pages/Guilds'))
const Lore = lazy(() => import('./pages/Lore'))
const Codex = lazy(() => import('./pages/Codex'))

function Loading() {
  return (
    <div className="min-h-screen bg-stone-950 flex items-center justify-center">
      <div className="text-center">
        <div className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-700 tracking-widest animate-pulse">
          LOADING...
        </div>
      </div>
    </div>
  )
}

export default function App() {
  return (
    <BrowserRouter>
      <ScrollProgress />
      <Navigation />
      <Suspense fallback={<Loading />}>
        <main className="min-h-screen">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/artifacts" element={<Artifacts />} />
            <Route path="/armor-sets" element={<ArmorSets />} />
            <Route path="/spirit-weapons" element={<SpiritWeapons />} />
            <Route path="/classes" element={<Classes />} />
            <Route path="/raid-bosses" element={<RaidBosses />} />
            <Route path="/infinite-castle" element={<InfiniteCastle />} />
            <Route path="/companions" element={<Companions />} />
            <Route path="/dream-rate" element={<DreamRate />} />
            <Route path="/skill-trees" element={<SkillTrees />} />
            <Route path="/seasons" element={<Seasons />} />
            <Route path="/quests" element={<Quests />} />
            <Route path="/cooking" element={<Cooking />} />
            <Route path="/craftforever" element={<CraftForever />} />
            <Route path="/guilds" element={<Guilds />} />
            <Route path="/lore" element={<Lore />} />
            <Route path="/codex" element={<Codex />} />
          </Routes>
        </main>
      </Suspense>
      <Footer />
    </BrowserRouter>
  )
}
