
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5BRM.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5BRM.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [14997,15000,12841,12905,15002,12963,12965,14923,14924,12964,245,247,246,13016,13017,14926,71,135,68,195,14810,2067,2069,1997,1998,1999,2046,2007,14859,14928,14929,14795,14796,14797,14858,2120,2195,2196,2197,2063,2118,2119,2136,15056,15057,1936,15072,1950,12838,14980,14996,14983,14978,14979] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [7284,7216,7286,7215,4578,4579,4647,4648,4649,2785,4643,4644,2733,2734,2674,4717,4720,4722,2610,4776,7280,5321,5371,5372,5373,5197,5261,7359,2786,5303,5306,2784,4624,4703,4626,7336,7353,7354,7357,7337,7414,7340] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [10320,9669,10321,10388,9670,9671,9666,10336,10386,10387,12297,12299,12230,7933,7891,7950,7951,9742,7827,9665,12427,12428,9601,9648,12351,10276,12371,12373,12349,12367,12368,12294,12350,9539,9600,10209,10212,8002,8001,8003] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [17123,17124,17125,17126,17127,17128,17047,17070,17072,12820,17027,12822,7535,14103,7533,12823,294,347,348,278,290,354,349,392,7513,7512] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [8159,8177,8179,8207,13370,13371,13397,16751,16752,8172,15297,15243,14591,15290,16798,16797,13368,13356,13395,13336] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [6947,16155,16170,16120,16121,16125,16126,7598,7600,7590,7653,7654,5753,450,7655,418,403,451,5726,5728] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [14304,15142,15143,10179,11527,10148,10147,10149,11523,11529,11526,11513] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2373,600,602,627,598,2437,15674,2434,2445,2430,1732,1731,2383,566,625,2381,15673,15628,15629] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [12612,12614,12668,10707,10766,10768,12669,10727,10739,2942,10741,10742,12604,12666,12667,16576,16526,16528,10715,11962,16525,10735] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [14859,14928,14929,14854,14858,2120,2196,2197,2063,2118,2119,2136,2121,2123,2125,14904,14906] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2610,7166,4776,2674,4717,4720,4722,7216,7153,7215,4775,4777,4703] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        